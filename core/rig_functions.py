import maya.cmds as cmds
from maya_functions import match_all_transformation
from frankenstein.rigUtils import RigUtils


def match_controllers_and_buffers_to_guides(namespace: str = None):
    """Match the controllers and buffers of the scene to the corresponding
    guides' positions, prioritizing '_IN_BUF' before '_CON'.

    :param namespace: Filter the match to a specific namespace,
    defaults to None
    :type namespace: str, optional
    """
    sel = cmds.ls()

    if namespace:
        buffers = [node for node in sel if node.startswith(f"{namespace}") and
                   node.endswith("_IN_BUF")]
        controllers = [node for node in sel if node.startswith(f"{namespace}")
                       and node.endswith("_CON")]
    else:
        buffers = [node for node in sel if node.endswith("_IN_BUF")]
        controllers = [node for node in sel if node.endswith("_CON")]

    # Prioritize matching buffers first
    ordered_controllers = buffers + controllers

    for controller in ordered_controllers:
        # Check if the .rig_guid attribute exists
        if not cmds.attributeQuery("rig_guid", node=controller, exists=True):
            print(f"Skipping {controller}: .rig_guid attribute not found.")
            continue

        # Get connections to the guide
        connections = cmds.listConnections(f"{controller}.rig_guid")

        if connections:
            guid = connections[-1]
            match_all_transformation(controller, guid)
        else:
            print(f"Skipping {controller}: No connected guide found.")


def store_controllers_rest_pose(namespace="__TEMP__"):
    """store the rest pose of the controllers of the scene.
    can be filtered to a specific namespace

    :param namespace: namespace of the desired module, defaults to "__TEMP__"
    :type namespace: str, optional
    """
    ru = RigUtils()
    if namespace:
        controllers = [
            x for x in cmds.ls() if x.startswith(namespace) and
            x.endswith("_CON") and "tangent" not in x and "setup" not in x
            ]
    else:
        controllers = [
            x for x in cmds.ls() if x.endswith("_CON") and "tangent"
            not in x and "setup" not in x
            ]
    cmds.select(controllers)

    ru.setNeutralPose2()
