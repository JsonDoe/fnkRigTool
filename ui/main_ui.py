import os
import shutil
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance

from .build_ui import ModuleBuildUI
from .edit_ui import ModuleEditUI
from core.actions import get_latest_module_publish_path, \
    import_ma_file, set_module_to_build_mode, delete_namespace_if_exists, find_setup_node_in_selection
from core.constants import BUILDNSPC

MODULES_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'modules'))
PREVIEW_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'utils', 'preview'))

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

        # === Namespace Field ===
        ns_layout = QtWidgets.QHBoxLayout()
        ns_label = QtWidgets.QLabel("Module Prefix:")
        self.namespace_input = QtWidgets.QLineEdit()
        ns_layout.addWidget(ns_label)
        ns_layout.addWidget(self.namespace_input)
        self.layout().addLayout(ns_layout)

        # === Action Buttons ===
        self.build_btn = QtWidgets.QPushButton("Build Module")
        self.edit_btn = QtWidgets.QPushButton("Edit Module")
        self.duplicate_btn = QtWidgets.QPushButton("Duplicate Module")
        self.freeze_btn = QtWidgets.QPushButton("Freeze Namespaces")

        self.build_btn.clicked.connect(self.build_selected_module)
        self.edit_btn.clicked.connect(self.edit_selected_module)
        self.duplicate_btn.clicked.connect(self.duplicate_module)
        self.freeze_btn.clicked.connect(self.freeze_namespaces)

        for btn in [self.build_btn, self.edit_btn, self.duplicate_btn, self.freeze_btn]:
            self.layout().addWidget(btn)

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
            QtWidgets.QMessageBox.warning(self, "No Setup Node", "Please make sure the module contains a setup node.")
            return
        set_module_to_build_mode(setup_node)
        self.hide()
        self.editor = ModuleEditUI(selection=selected, setup_node=setup_node, parent=self)
        self.editor.show()

    def duplicate_module(self):
        selected = self.module_selector.currentText()
        if not selected:
            return
        src = os.path.join(MODULES_DIR, selected)
        new_name = f"{selected}_copy"
        dst = os.path.join(MODULES_DIR, new_name)
        count = 1
        while os.path.exists(dst):
            dst = os.path.join(MODULES_DIR, f"{new_name}_{count}")
            count += 1
        shutil.copytree(src, dst)
        QtWidgets.QMessageBox.information(self, "Duplicate", f"Duplicated module to: {os.path.basename(dst)}")
        self.load_modules()
        self.module_selector.setCurrentText(os.path.basename(dst))

    def freeze_namespaces(self):
        QtWidgets.QMessageBox.information(self, "Freeze Namespaces", "Namespace freezing not implemented yet.")

def show():
    global window
    try:
        window.close()
        window.deleteLater()
    except:
        pass
    window = AutoRigToolUI()
    window.show()
