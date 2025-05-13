import os
from PySide6 import QtWidgets, QtCore, QtGui
from maya import OpenMayaUI as omui
import maya.cmds as cmds
from shiboken6 import wrapInstance
from core.actions import set_module_to_display_mode, snap_hierarchy_to_guid
from core.constants import PREVIEW_DIR


def get_maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QtWidgets.QWidget)


class ModuleEditUI(QtWidgets.QDialog):
    def __init__(self, selection, setup_node, parent=get_maya_main_window()):
        super().__init__(parent)
        self.setWindowTitle("Edit Module")
        self.setMinimumWidth(350)
        self.setWindowFlags(self.windowFlags() | QtCore.Qt.Window)

        self.selection = selection
        self.setup_node = setup_node

        self.setStyleSheet("""
            QDialog {
                background-color: #2d2d2d;
                color: #f0f0f0;
                font-family: 'Segoe UI';
                font-size: 10pt;
            }
            QLabel {
                font-weight: bold;
            }
            QLineEdit, QCheckBox {
                background-color: #3c3c3c;
                border: 1px solid #555;
                border-radius: 4px;
                padding: 4px;
                color: white;
            }
            QPushButton {
                background-color: #444;
                border: none;
                padding: 6px 12px;
                border-radius: 4px;
            }
            QPushButton:hover {
                background-color: #555;
            }
        """)

        layout = QtWidgets.QVBoxLayout(self)

        # === Preview Image ===
        image_label = QtWidgets.QLabel()
        image_label.setAlignment(QtCore.Qt.AlignmentFlag.AlignCenter)
        image_path = os.path.join(PREVIEW_DIR, "build.jpg")
        if os.path.exists(image_path):
            pixmap = QtGui.QPixmap(image_path)
            scaled = pixmap.scaledToWidth(
                250, QtCore.Qt.TransformationMode.SmoothTransformation)
            image_label.setPixmap(scaled)
        else:
            image_label.setText("(No build image)")
        layout.addWidget(image_label)

        # === Instructions ===
        instructions = QtWidgets.QLabel(
            "Adjust or reposition your guides, then click "
            "'Rebuild' to update the rig.")
        instructions.setWordWrap(True)
        layout.addWidget(instructions)

        # === Button Row ===
        btn_layout = QtWidgets.QHBoxLayout()
        rebuild_btn = QtWidgets.QPushButton("Rebuild")
        rebuild_btn.clicked.connect(self.rebuild_module)
        btn_layout.addWidget(rebuild_btn)

        cancel_btn = QtWidgets.QPushButton("Cancel")
        cancel_btn.clicked.connect(self.cancel)
        btn_layout.addWidget(cancel_btn)

        layout.addSpacing(10)
        layout.addLayout(btn_layout)
        layout.addStretch()

    def rebuild_module(self):
        try:
            cmds.select(self.selection)
            snap_hierarchy_to_guid(scope="selection")
            if cmds.objExists(self.setup_node):
                set_module_to_display_mode(self.setup_node)
            cmds.select(clear=True)
        except Exception as e:
            QtWidgets.QMessageBox.critical(self, "Rebuild Failed", str(e))
            return

        QtWidgets.QMessageBox.information(
            self, "Rebuild Complete", "Rig Module has been rebuilt.")
        self.close()
        if self.parent():
            self.parent().show()

    def cancel(self):
        set_module_to_display_mode(self.setup_node)
        self.close()
        if self.parent():
            self.parent().show()
