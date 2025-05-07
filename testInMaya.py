import sys
if "C:/Users/julien.miternique/Documents/workspace/fnkRigTool" not in sys.path:
    sys.path.append("C:/Users/julien.miternique/Documents/workspace/fnkRigTool")


import importlib
import ui.main_ui
importlib.reload(ui.main_ui)
ui.main_ui.show()
