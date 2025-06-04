import sys
import os
import ui.main_ui as main_ui

def launch_autorig_tool():
    """
    Launches the AutoRig Tool UI inside Maya.
    Ensures the package is discoverable and launches the main interface.
    """
    project_root = os.path.dirname(os.path.abspath(__file__))
    if project_root not in sys.path:
        sys.path.append(project_root)

    main_ui.show()


if __name__ == "__main__":
    launch_autorig_tool()
