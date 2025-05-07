import sys
from PySide6 import QtWidgets


"""
def __main__():
    app = QtWidgets.QApplication(sys.argv)

    app.setStyle("fusion")

    # V load and apply the application style

    wid = MainWidget()

    wid.show()

    app.exec()


__main__()
"""

from ui import main_ui
main_ui.show()

