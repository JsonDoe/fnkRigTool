import os
import shutil
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance

from .build_ui import ModuleBuildUI
from .edit_ui import ModuleEditUI
from core.actions import get_latest_module_publish_path, \
    import_ma_file, set_module_to_build_mode, delete_namespace_if_exists, \
    find_setup_node_in_selection, freeze_namespace, create_and_set_namespace, \
    add_prefix_and_remove_namespaces
from core.constants import MODULES_DIR, PREVIEW_DIR


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class AutoRigToolUI(QtWidgets.QDialog):
    def __init__(self, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle("AutoRig Tool")
        self.setMinimumWidth(300)
        self.setLayout(QtWidgets.QVBoxLayout())

        # === Preview Image ===
        self.preview_label = QtWidgets.QLabel()
        self.preview_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        self.preview_label.setFixedHeight(200)
        self.layout().addWidget(self.preview_label)

        # === Module ComboBox ===
        self.module_selector = QtWidgets.QComboBox()
        self.module_selector.currentIndexChanged.connect(self.on_module_change)
        self.layout().addWidget(self.module_selector)

        # === Namespace Input ===
        ns_layout = QtWidgets.QHBoxLayout()
        ns_label = QtWidgets.QLabel("Module Prefix:")
        self.namespace_input = QtWidgets.QLineEdit()
        ns_layout.addWidget(ns_label)
        ns_layout.addWidget(self.namespace_input)
        self.layout().addLayout(ns_layout)

        # === Build & Edit Buttons ===
        self.build_btn = QtWidgets.QPushButton("Build Module")
        self.build_btn.clicked.connect(self.build_selected_module)
        self.layout().addWidget(self.build_btn)

        self.edit_btn = QtWidgets.QPushButton("Edit Module")
        self.edit_btn.clicked.connect(self.edit_selected_module)
        self.layout().addWidget(self.edit_btn)

        # === Publish Button ===
        self.publish_btn = QtWidgets.QPushButton("Publish Module Version")
        self.publish_btn.clicked.connect(self.publish_module_version)
        self.layout().addWidget(self.publish_btn)

        # === Duplicate Prefix Label ===
        prefix_label = QtWidgets.QLabel("Duplicate Prefix:")
        prefix_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignLeft)
        self.layout().addWidget(prefix_label)

        # === Duplicate Controls (LineEdit + Button) ===
        dup_layout = QtWidgets.QHBoxLayout()
        self.duplicate_prefix_input = QtWidgets.QLineEdit()
        self.duplicate_prefix_input.setText("R")
        self.duplicate_prefix_input.setFixedWidth(50)
        dup_layout.addWidget(self.duplicate_prefix_input)

        self.duplicate_btn = QtWidgets.QPushButton("Duplicate Module")
        self.duplicate_btn.clicked.connect(self.duplicate_module)
        dup_layout.addWidget(self.duplicate_btn)
        self.layout().addLayout(dup_layout)

        # === Freeze Namespaces Button ===
        self.freeze_btn = QtWidgets.QPushButton("Freeze All Namespaces")
        self.freeze_btn.clicked.connect(self.freeze_all_namespaces)
        self.layout().addWidget(self.freeze_btn)

        self.load_modules()

    def load_modules(self):
        self.module_selector.clear()
        if not os.path.exists(MODULES_DIR):
            return
        modules = [f for f in sorted(os.listdir(MODULES_DIR)) if os.path.isdir(os.path.join(MODULES_DIR, f))]
        self.module_selector.addItems(modules)
        self.on_module_change()

    def on_module_change(self):
        self.update_preview()
        self.update_namespace_field()

    def update_namespace_field(self):
        current = self.module_selector.currentText()
        self.namespace_input.setText(current)

    def update_preview(self):
        selected = self.module_selector.currentText()
        if not selected:
            self.preview_label.clear()
            return
        preview_path_png = os.path.join(PREVIEW_DIR, f"{selected}.png")
        preview_path_jpg = os.path.join(PREVIEW_DIR, f"{selected}.jpg")

        pixmap = None
        if os.path.exists(preview_path_png):
            pixmap = QtGui.QPixmap(preview_path_png)
        elif os.path.exists(preview_path_jpg):
            pixmap = QtGui.QPixmap(preview_path_jpg)

        if pixmap and not pixmap.isNull():
            scaled = pixmap.scaledToWidth(250, QtCore.Qt.TransformationMode.SmoothTransformation)
            self.preview_label.setPixmap(scaled)
        else:
            self.preview_label.clear()
            self.preview_label.setText("(No preview)")

    def build_selected_module(self):
        selected = self.module_selector.currentText()
        namespace = self.namespace_input.text()
        if selected:
            delete_namespace_if_exists(namespace)
            import_ma_file(get_latest_module_publish_path(selected), namespace=namespace)
            set_module_to_build_mode(namespace + ":setup")
            self.hide()
            self.builder = ModuleBuildUI(module_name=selected, namespace=namespace, parent=self)
            self.builder.show()

    def edit_selected_module(self):
        selected = cmds.ls(selection=True)
        if not selected:
            QtWidgets.QMessageBox.warning(self, "No Selection", "Please select a module root group in the scene.")
            return

        setup_node = find_setup_node_in_selection(selected)
        if not setup_node:
            QtWidgets.QMessageBox.warning(self, "No Setup Node", "No valid setup node found in selection.")
            return

        set_module_to_build_mode(setup_node)
        self.hide()
        self.editor = ModuleEditUI(selection=selected, setup_node=setup_node, parent=self)
        self.editor.show()

    def publish_module_version(self):
        selected_nodes = cmds.ls(selection=True, long=True)
        module_name = self.module_selector.currentText()

        if not selected_nodes:
            QtWidgets.QMessageBox.warning(self, "No Selection", "Please select something to export.")
            return

        # Construct publish folder path
        publish_dir = os.path.join(MODULES_DIR, module_name, "publish")
        if not os.path.exists(publish_dir):
            os.makedirs(publish_dir)

        # Find highest existing version
        existing_files = [f for f in os.listdir(publish_dir) if f.endswith(".ma")]
        version_prefix = f"{module_name}_v"
        version_numbers = []

        for f in existing_files:
            if f.startswith(version_prefix):
                try:
                    version_str = f.replace(version_prefix, "").replace(".ma", "")
                    version_num = int(version_str)
                    version_numbers.append(version_num)
                except ValueError:
                    continue

        next_version = max(version_numbers) + 1 if version_numbers else 1
        filename = f"{module_name}_v{next_version:03d}.ma"
        full_path = os.path.join(publish_dir, filename)

        try:
            cmds.file(full_path, force=True, options="v=0;", type="mayaAscii",
                      exportSelected=True, preserveReferences=True, constructionHistory=True)
            QtWidgets.QMessageBox.information(self, "Publish Successful", f"Exported: {filename}")
        except Exception as e:
            QtWidgets.QMessageBox.critical(self, "Publish Failed", f"Could not export:\n{e}")
            shutil.copytree(src, dst)
            QtWidgets.QMessageBox.information(self, "Duplicate", f"Duplicated module to: {os.path.basename(dst)}")
            self.load_modules()
            self.module_selector.setCurrentText(os.path.basename(dst))

    def duplicate_module(self):
        """
        Duplicates the selected module into a new namespace using Maya's
        Duplicate Special.

        Workflow:
        - Verifies a node is selected and a duplicate prefix is provided.
        - Deletes any existing namespace with the given prefix.
        - Creates and sets a new namespace.
        - Duplicates the selected node with its input graph (upstream nodes).
        - Freezes the newly created namespace
            (prefixes nodes and removes the namespace).
        - Resets to the root namespace.

        User is notified of success or any failure via popup dialogs.
        """
        selected = cmds.ls(selection=True, long=True)
        namespace = self.duplicate_prefix_input.text().strip()

        if not selected or not namespace:
            QtWidgets.QMessageBox.warning(
                self, "Missing Info",
                "Please select a module and provide a duplicate prefix.")
            return

        delete_namespace_if_exists(namespace)
        create_and_set_namespace(namespace)

        try:
            # Duplicate Special with input graph (preserve history)
            duplicated = cmds.duplicate(
                selected[0],
                upstreamNodes=True,
                renameChildren=True
            )

            if duplicated:
                QtWidgets.QMessageBox.information(
                    self, "Success",
                    f"Duplicated {selected[0]} into namespace: {namespace}")
            else:
                QtWidgets.QMessageBox.warning(
                    self, "Duplicate Failed",
                    "Duplication returned no result.")
        except Exception as e:
            QtWidgets.QMessageBox.critical(self, "Error", str(e))
            return

        cmds.namespace(set=':')
        freeze_namespace(namespace)

    def freeze_all_namespaces(self):
        """
        Freezes all custom namespaces in the scene by:
        - Returning to the root namespace
        - Prefixing all nodes with their namespace
        - Removing the namespaces

        Any errors during the operation are caught and reported.
        """
        try:
            cmds.namespace(set=':')
            add_prefix_and_remove_namespaces()
            QtWidgets.QMessageBox.information(
                self, "Success", "All namespaces have been frozen.")
        except Exception as e:
            cmds.warning(f"Failed to freeze namespaces: {e}")
            QtWidgets.QMessageBox.critical(
                self, "Error", f"Namespace freezing failed:\n{e}")


def show():
    global window
    try:
        window.close()
        window.deleteLater()
    except:
        pass
    window = AutoRigToolUI()
    window.show()
