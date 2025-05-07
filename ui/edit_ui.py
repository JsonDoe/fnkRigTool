import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
from shiboken6 import wrapInstance

PREVIEW_DIR = os.path.abspath(
    os.path.join(os.path.dirname(__file__), '..', 'utils', 'preview'))


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class ModuleEditUI(QtWidgets.QDialog):
    def __init__(self, module_name, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle(f"Edit Module: {module_name}")
        self.setMinimumWidth(300)

        # === Main Layout ===
        main_layout = QtWidgets.QVBoxLayout(self)
        self.setLayout(main_layout)

        # === Image Preview ===
        image_label = QtWidgets.QLabel()
        image_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        image_path = os.path.join(PREVIEW_DIR, "build.jpg")
        if os.path.exists(image_path):
            pixmap = QtGui.QPixmap(image_path)
            scaled = pixmap.scaledToWidth(
                250, QtCore.Qt.TransformationMode.SmoothTransformation)
            image_label.setPixmap(scaled)
        else:
            image_label.setText("(No preview available)")
        main_layout.addWidget(image_label)

        # === Instruction ===
        instruction_label = QtWidgets.QLabel(
            "Adjust or reposition your guides and click 'Rebuild'"
            "to update the rig module"
        )
        instruction_label.setWordWrap(True)
        instruction_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignLeft)
        main_layout.addWidget(instruction_label)

        # === Rebuild Button ===
        self.rebuild_btn = QtWidgets.QPushButton("Rebuild")
        self.rebuild_btn.clicked.connect(self.rebuild_module)
        main_layout.addWidget(self.rebuild_btn)

        # Padding
        main_layout.addStretch()

    def rebuild_module(self):
        QtWidgets.QMessageBox.information(
            self, "Rebuild Triggered", "Rebuilding module...")
        # TODO: Hook into rebuild logic
        self.close()
