import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
from shiboken6 import wrapInstance
from ui.main_ui import get_maya_main_window

PREVIEW_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'utils', 'preview'))


class ModuleBuildUI(QtWidgets.QDialog):
    def __init__(self, module_name, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle(f"Build Module: {module_name}")
        self.setMinimumWidth(300)
        self.setLayout(QtWidgets.QVBoxLayout())

        # Build image
        image_label = QtWidgets.QLabel()
        image_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        image_path = os.path.join(PREVIEW_DIR, "build.jpg")
        if os.path.exists(image_path):
            pixmap = QtGui.QPixmap(image_path)
            scaled = pixmap.scaledToWidth(250, QtCore.Qt.TransformationMode.SmoothTransformation)
            image_label.setPixmap(scaled)
        else:
            image_label.setText("(No build image)")
        self.layout().addWidget(image_label)

        # Instruction
        instruction_label = QtWidgets.QLabel("Place the guides consistently then click 'build' to generate the rig module")
        instruction_label.setWordWrap(True)
        self.layout().addWidget(instruction_label)

        # Namespace input
        form_layout = QtWidgets.QHBoxLayout()
        ns_label = QtWidgets.QLabel("Namespace:")
        self.ns_input = QtWidgets.QLineEdit()
        self.ns_input.setText(module_name)
        form_layout.addWidget(ns_label)
        form_layout.addWidget(self.ns_input)
        self.layout().addLayout(form_layout)

        # Build Button
        build_btn = QtWidgets.QPushButton("Build")
        build_btn.clicked.connect(self.build_module)
        self.layout().addWidget(build_btn)

    def build_module(self):
        namespace = self.ns_input.text()
        QtWidgets.QMessageBox.information(self, "Build", f"Building rig for namespace: {namespace}")
        # TODO: Insert actual rig-building logic here
        self.close()
