import sys
import importlib

# Add your tool path
tool_path = r"C:/Users/julien.miternique/Documents/workspace/fnkRigTool"
if tool_path not in sys.path:
    sys.path.append(tool_path)

# Reload both modules
import ui.build_ui
import ui.main_ui
import ui.edit_ui
import core.actions
import core.constants

importlib.reload(core.actions)
importlib.reload(core.constants)

importlib.reload(ui.build_ui)
importlib.reload(ui.main_ui)
importlib.reload(ui.edit_ui)
# Show the main UI
ui.main_ui.show()