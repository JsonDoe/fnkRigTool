from PySide6 import QtWidgets, QtGui, QtCore


class MainWidget(QtWidgets.QFrame):

    def __init__(self):
        super(MainWidget, self).__init__()
        self.rig_module_list = ["test001", "test002", "test003"]
        self.initUI()

    def initUI(self):
        self.mainLayout = QtWidgets.QVBoxLayout()
        self.createButtons()
        self.mainLayout.addLayout(self.btn_layout)
        self.setLayout(self.mainLayout)
        self.setWindowTitle("Auto Rig Tool 0.1")

    def createButtons(self):
        self.btn_layout = QtWidgets.QVBoxLayout()
        self.btn_layout.setAlignment(QtCore.Qt.AlignTop)

        self.btn_load_rig_module_layout = QtWidgets.QHBoxLayout()
        self.combo_load_rig_module = QtWidgets.QComboBox()
        self.combo_load_rig_module.addItems(self.rig_module_list)
        self.btn_load_rig_module = QtWidgets.QPushButton("Generate Rig Module")

        self.btn_edit_rig_module = QtWidgets.QPushButton("Edit Rig Module")
        self.btn_import_references = QtWidgets.QPushButton("Import References")
        self.btn_freeze_namespaces = QtWidgets.QPushButton("Freeze Namespaces")

        self.btn_load_rig_module_layout.addWidget(self.combo_load_rig_module)
        self.btn_load_rig_module_layout.addWidget(self.btn_load_rig_module)
        self.btn_layout.addLayout(self.btn_load_rig_module_layout)
        self.btn_layout.addWidget(self.btn_edit_rig_module)
        self.btn_layout.addWidget(self.btn_import_references)
        self.btn_layout.addWidget(self.btn_freeze_namespaces)
