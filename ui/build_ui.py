import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance
from core.actions import set_module_to_display_mode, snap_hierarchy_to_guid, freeze_namespace, delete_namespace_if_exists
from core.constants import BUILDNSPC

PREVIEW_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'utils', 'preview'))


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class ModuleBuildUI(QtWidgets.QDialog):
    def __init__(
            self, module_name: str, namespace: str,
            parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle(f"Build Module: {module_name}")
        self.setMinimumWidth(300)
        self.setWindowFlags(self.windowFlags() | QtCore.Qt.Window)

        self.module_name = module_name
        self.namespace = namespace

        main_layout = QtWidgets.QVBoxLayout(self)
        self.setLayout(main_layout)

        # Image
        image_label = QtWidgets.QLabel()
        image_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        image_path = os.path.join(PREVIEW_DIR, "build.jpg")
        if os.path.exists(image_path):
            pixmap = QtGui.QPixmap(image_path)
            scaled = pixmap.scaledToWidth(250, QtCore.Qt.TransformationMode.SmoothTransformation)
            image_label.setPixmap(scaled)
        else:
            image_label.setText("(No build image)")
        main_layout.addWidget(image_label)

        # Instructions
        instructions = QtWidgets.QLabel("Place the guides consistently then click 'build' to generate the rig module")
        instructions.setWordWrap(True)
        main_layout.addWidget(instructions)

        # Freeze checkbox
        self.freeze_checkbox = QtWidgets.QCheckBox("Freeze namespace on build")
        self.freeze_checkbox.setChecked(True)
        main_layout.addWidget(self.freeze_checkbox)

        # === Buttons layout ===
        btn_layout = QtWidgets.QHBoxLayout()

        # Build Button
        build_btn = QtWidgets.QPushButton("Build")
        build_btn.clicked.connect(self.build_module)
        btn_layout.addWidget(build_btn)

        # Cancel Button
        cancel_btn = QtWidgets.QPushButton("Cancel")
        cancel_btn.clicked.connect(self.cancel)
        btn_layout.addWidget(cancel_btn)

        main_layout.addLayout(btn_layout)

        main_layout.addStretch()

    def build_module(self):
        namespace = self.namespace
        freeze_enabled = self.freeze_checkbox.isChecked()

        try:
            cmds.select(f"{namespace}:module")
            snap_hierarchy_to_guid(scope="selection")
            set_module_to_display_mode(namespace + ":setup")
            if freeze_enabled:
                freeze_namespace(ns_to_freeze=namespace)
            cmds.select(clear=True)
        except Exception as e:
            QtWidgets.QMessageBox.critical(self, "Build Failed", str(e))
            return

        QtWidgets.QMessageBox.information(self, "Success", f"Rig built for: {namespace}")
        self.close()

    def cancel(self):
        cmds.delete(f"{self.namespace}:module")
        delete_namespace_if_exists(namespace=self.namespace)
        self.close()
        if self.parent():
            self.parent().show()

        # Bring back main UI
        if self.parent():
            self.parent().show()
