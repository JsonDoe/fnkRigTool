import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance

from .build_ui import ModuleBuildUI
from .edit_ui import ModuleEditUI
from core.actions import (
    get_latest_module_publish_path, import_ma_file, set_module_to_build_mode,
    delete_namespace_if_exists, find_setup_node_in_selection, freeze_namespace,
    create_and_set_namespace, add_prefix_and_remove_namespaces
)
from core.constants import MODULES_DIR, PREVIEW_DIR


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class AutoRigToolUI(QtWidgets.QDialog):
    def __init__(self, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle("AutoRig Tool")
        self.setMinimumWidth(350)
        self.setLayout(QtWidgets.QVBoxLayout())

        self.icon_dir = os.path.abspath(
            os.path.join(os.path.dirname(__file__), '..', 'utils', 'icons'))
        self.setStyleSheet(self._get_stylesheet())
        self._build_ui()
        self.load_modules()

    # ====================
    # === UI BUILDING ===
    # ====================

    def _build_ui(self):
        self._build_preview()
        self._build_module_selector()
        self._build_namespace_input()
        self._build_buttons()

    def _build_preview(self):
        self.preview_label = QtWidgets.QLabel()
        self.preview_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        self.preview_label.setFixedHeight(180)
        self.layout().addWidget(self.preview_label)

    def _build_module_selector(self):
        self.module_selector = QtWidgets.QComboBox()
        self.module_selector.currentIndexChanged.connect(self.on_module_change)
        self.layout().addWidget(self.module_selector)

    def _build_namespace_input(self):
        layout = QtWidgets.QHBoxLayout()
        layout.addWidget(QtWidgets.QLabel("Module Prefix:"))
        self.namespace_input = QtWidgets.QLineEdit()
        layout.addWidget(self.namespace_input)
        self.layout().addLayout(layout)

    def _build_buttons(self):
        self.layout().addWidget(self._section_label("Build Module"))
        self._add_button(
            "Build Module", self.build_selected_module, "build.svg")

        self.layout().addWidget(self._section_label("Edit Module"))
        self._add_button("Edit Module", self.edit_selected_module, "edit.svg")
        self._add_button(
            "Publish Module Version",
            self.publish_module_version, "upload.svg")

        self.layout().addWidget(self._section_label("Duplicate Module"))
        dup_layout = QtWidgets.QHBoxLayout()
        dup_layout.addWidget(QtWidgets.QLabel("Prefix:"))
        self.duplicate_prefix_input = QtWidgets.QLineEdit()
        self.duplicate_prefix_input.setText("R")
        self.duplicate_prefix_input.setFixedWidth(50)
        dup_layout.addWidget(self.duplicate_prefix_input)
        duplicate_btn = QtWidgets.QPushButton("Duplicate Module")
        duplicate_btn.setIcon(self._get_icon("copy.svg"))
        duplicate_btn.clicked.connect(self.duplicate_module)
        dup_layout.addWidget(duplicate_btn)
        self.layout().addLayout(dup_layout)

        self.layout().addWidget(self._section_label("Utilities"))
        self._add_button(
            "Freeze All Namespaces",
            self.freeze_all_namespaces, "snowflake.svg")

        self.layout().addStretch()

    def _add_button(self, label, callback, icon_file=None):
        btn = QtWidgets.QPushButton(label)
        if icon_file:
            btn.setIcon(self._get_icon(icon_file))
        btn.clicked.connect(callback)
        self.layout().addWidget(btn)

    def _section_label(self, text: str):
        label = QtWidgets.QLabel(text)
        label.setStyleSheet("font-size: 11pt; margin-top: 10px;")
        return label

    def _get_icon(self, filename: str):
        icon_path = os.path.join(self.icon_dir, filename)
        if os.path.exists(icon_path):
            return QtGui.QIcon(icon_path)
        return QtGui.QIcon()

    def _get_stylesheet(self):
        return """
        QDialog {
            background-color: #2d2d2d;
            color: #f0f0f0;
            font-family: 'Segoe UI';
            font-size: 10pt;
        }
        QLineEdit, QComboBox {
            background-color: #3c3c3c;
            border: 1px solid #555;
            border-radius: 4px;
            padding: 4px;
            color: white;
        }
        QPushButton {
            background-color: #444;
            border: none;
            padding: 6px;
            border-radius: 4px;
        }
        QPushButton:hover {
            background-color: #555;
        }
        QLabel {
            font-weight: bold;
        }
        """

    # ====================
    # === CORE LOGIC ===
    # ====================

    def load_modules(self):
        self.module_selector.clear()
        if not os.path.exists(MODULES_DIR):
            return
        modules = sorted(
            f for f in os.listdir(MODULES_DIR)
            if os.path.isdir(os.path.join(MODULES_DIR, f))
        )
        self.module_selector.addItems(modules)
        self.on_module_change()

    def on_module_change(self):
        self._update_preview()
        self.namespace_input.setText(self.module_selector.currentText())

    def _update_preview(self):
        selected = self.module_selector.currentText()
        if not selected:
            self.preview_label.clear()
            return

        for ext in ['.svg', '.jpg']:
            preview_path = os.path.join(PREVIEW_DIR, f"{selected}{ext}")
            if os.path.exists(preview_path):
                pixmap = QtGui.QPixmap(preview_path)
                scaled = pixmap.scaledToWidth(
                    250, QtCore.Qt.TransformationMode.SmoothTransformation)
                self.preview_label.setPixmap(scaled)
                return

        self.preview_label.clear()
        self.preview_label.setText("(No preview)")

    def build_selected_module(self):
        selected = self.module_selector.currentText()
        namespace = self.namespace_input.text()
        if not selected or not namespace:
            return

        delete_namespace_if_exists(namespace)
        import_ma_file(get_latest_module_publish_path(
            selected), namespace=namespace)
        set_module_to_build_mode(f"{namespace}:setup")
        self.hide()
        self.builder = ModuleBuildUI(
            module_name=selected, namespace=namespace, parent=self)
        self.builder.show()

    def edit_selected_module(self):
        selected = cmds.ls(selection=True)
        if not selected:
            QtWidgets.QMessageBox.warning(
                self, "No Selection",
                "Please select a module root group in the scene.")
            return

        setup_node = find_setup_node_in_selection(selected)
        if not setup_node:
            QtWidgets.QMessageBox.warning(
                self, "No Setup Node",
                "No valid setup node found in selection.")
            return

        set_module_to_build_mode(setup_node)
        self.hide()
        self.editor = ModuleEditUI(
            selection=selected, setup_node=setup_node, parent=self)
        self.editor.show()

    def publish_module_version(self):
        selected_nodes = cmds.ls(selection=True, long=True)
        module_name = self.module_selector.currentText()

        if not selected_nodes:
            QtWidgets.QMessageBox.warning(
                self, "No Selection", "Please select something to export.")
            return

        publish_dir = os.path.join(MODULES_DIR, module_name, "publish")
        os.makedirs(publish_dir, exist_ok=True)

        existing = [f for f in os.listdir(publish_dir) if f.endswith(".ma")]
        versions = [
            int(f.split("_v")[-1].split(".ma")[0])
            for f in existing if f.startswith(f"{module_name}_v")]
        next_version = max(versions) + 1 if versions else 1
        filename = f"{module_name}_v{next_version:03d}.ma"
        full_path = os.path.join(publish_dir, filename)

        try:
            cmds.file(full_path, force=True, options="v=0;", type="mayaAscii",
                      exportSelected=True, preserveReferences=True,
                      constructionHistory=True)
            QtWidgets.QMessageBox.information(
                self, "Publish Successful", f"Exported: {filename}")
        except Exception as e:
            QtWidgets.QMessageBox.critical(
                self, "Publish Failed", f"Could not export:\n{e}")

    def duplicate_module(self):
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
            duplicated = cmds.duplicate(
                selected[0], upstreamNodes=True, renameChildren=True)
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
