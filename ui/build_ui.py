import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance
from core.actions import set_module_to_display_mode, snap_hierarchy_to_guid, delete_namespace_if_exists, migrate_nodes_to_namespace
from core.constants import BUILDNSPC

PREVIEW_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'utils', 'preview'))


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class ModuleBuildUI(QtWidgets.QDialog):
    def __init__(self, module_name, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle(f"Build Module: {module_name}")
        self.setMinimumWidth(300)

        # === Main layout ===
        main_layout = QtWidgets.QVBoxLayout()
        self.setLayout(main_layout)

        # === Build image ===
        image_label = QtWidgets.QLabel()
        image_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        image_path = os.path.join(PREVIEW_DIR, "build.jpg")
        if os.path.exists(image_path):
            pixmap = QtGui.QPixmap(image_path)
            scaled = pixmap.scaledToWidth(250, QtCore.Qt.TransformationMode.SmoothTransformation)
            image_label.setPixmap(scaled)
        else:
            image_label.setText("(No build image found)")
        main_layout.addWidget(image_label)

        # === Instruction ===
        instruction_label = QtWidgets.QLabel(
            "Place the guides consistently then click 'build' to generate the rig module"
        )
        instruction_label.setWordWrap(True)
        instruction_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignLeft)
        main_layout.addWidget(instruction_label)

        # === Namespace field ===
        ns_layout = QtWidgets.QHBoxLayout()
        ns_label = QtWidgets.QLabel("Namespace:")
        self.ns_input = QtWidgets.QLineEdit()
        self.ns_input.setText(module_name)
        ns_layout.addWidget(ns_label)
        ns_layout.addWidget(self.ns_input)
        main_layout.addLayout(ns_layout)

        # === Freeze namespace checkbox (THIS IS WHAT WAS MISSING VISUALLY) ===
        self.freeze_checkbox = QtWidgets.QCheckBox("Freeze namespace on build")
        self.freeze_checkbox.setChecked(True)
        main_layout.addWidget(self.freeze_checkbox)

        # === Build button ===
        self.build_btn = QtWidgets.QPushButton("Build")
        self.build_btn.clicked.connect(self.build_module)
        main_layout.addWidget(self.build_btn)

        # Final stretch to pad bottom
        main_layout.addStretch()

    def build_module(self):
        namespace = self.ns_input.text()
        freeze_enabled = self.freeze_checkbox.isChecked()

        cmds.select(f"{BUILDNSPC}:module")
        snap_hierarchy_to_guid(scope="selection")
        set_module_to_display_mode(BUILDNSPC + ":setup")
        migrate_nodes_to_namespace(old_ns=BUILDNSPC, new_ns=namespace)
        delete_namespace_if_exists(BUILDNSPC)


        QtWidgets.QMessageBox.information(
            self,
            "Build Triggered",
            f"Building rig for namespace: {namespace}\nFreeze namespace: {freeze_enabled}"
        )

        # TODO: Add actual rig logic and freezing here
        self.close()
