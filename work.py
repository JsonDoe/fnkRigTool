import maya.cmds as cmds
from maya_functions import (
    match_all_transformation,
    set_offset_parent_matrix_from_target_matrix,
)
from frankenstein.rigUtils import RigUtils
import maya.cmds as cmds
import os
import maya.api.OpenMaya as om


def match_translation(target: str, source: str):
    """Matches the translation of the target object to the source object.

    Args:
        target (str): target node name
        source (str): source node name
    """
    if cmds.objExists(source) and cmds.objExists(target):
        pos = cmds.xform(source, q=True, ws=True, translation=True)
        cmds.xform(target, ws=True, translation=pos)
    else:
        print(f"Source ({source}) or Target ({target}) does not exist.")


def match_rotation(target: str, source: str):
    """Matches the rotation of the target object to the source object.

    Args:
        target (str): target node name
        source (str): source node name
    """
    if cmds.objExists(source) and cmds.objExists(target):
        rot = cmds.xform(source, q=True, ws=True, rotation=True)
        cmds.xform(target, ws=True, rotation=rot)
    else:
        print(f"Source ({source}) or Target ({target}) does not exist.")


def match_scale(source, target):
    """Matches the scale of the target object to the source object.

    Args:
        target (str): target node name
        source (str): source node name
    """
    if cmds.objExists(source) and cmds.objExists(target):
        scale = cmds.xform(source, q=True, scale=True, relative=True)
        cmds.xform(target, scale=scale, relative=True)
    else:
        print(f"Source ({source}) or Target ({target}) does not exist.")


def match_all_transformation(source, target):
    """Matches the translation, rotation ,scale of the target object to the
    source object.

    Args:
        target (str): target node name
        source (str): source node name
    """
    if cmds.objExists(source) and cmds.objExists(target):
        # Match Translation
        pos = cmds.xform(source, q=True, ws=True, translation=True)
        cmds.xform(target, ws=True, translation=pos)

        # Match Rotation
        rot = cmds.xform(source, q=True, ws=True, rotation=True)
        cmds.xform(target, ws=True, rotation=rot)

        # Match Scale
        scale = cmds.xform(source, q=True, scale=True, relative=True)
        cmds.xform(target, scale=scale, relative=True)
    else:
        print(f"Source ({source}) or Target ({target}) does not exist.")


def rename_namespace(old_namespace, new_namespace):
    """
    Renames an existing namespace in Maya.

    :param old_namespace: The current namespace to rename.
    :param new_namespace: The new namespace name.
    """
    if not cmds.namespace(exists=old_namespace):
        print(f"Error: Namespace '{old_namespace}' does not exist.")
        return

    if cmds.namespace(exists=new_namespace):
        print(
            f"Error: Namespace '{new_namespace}' "
            "already exists. Choose a different name."
        )
        return

    try:
        # Move all objects to the new namespace
        cmds.namespace(set=":")  # Move to root namespace
        cmds.namespace(rename=[old_namespace, new_namespace])
    except Exception as e:
        print(f"Failed to rename namespace: {e}")


def load_ma_file_as_reference(file_path, namespace: str = "__BUILD__"):
    """
    Loads a .ma file into the current Maya scene within a specified namespace.

    :param file_path: The absolute path to the .ma file.
    :param namespace: The namespace under which the file should be loaded.
    """
    if not os.path.exists(file_path):
        print(f"Error: File not found - {file_path}")
        return

    try:
        # Load the file using reference the specified namespace
        cmds.file(file_path, reference=True, namespace=namespace)
        print(f"Successfully loaded {file_path} into namespace: {namespace}")
    except Exception as e:
        print(f"Failed to load file: {e}")


def load_ma_af_reference_with_dialog(namespace: str = "__BUILD__"):
    """
    Opens a file dialog and loads the selected .ma file into the specified
    namespace.

    :param namespace: The namespace under which the file should be loaded.

    """
    file_path = cmds.fileDialog2(
        fileFilter="Maya ASCII (*.ma)", dialogStyle=2, fileMode=1
    )

    if file_path:
        load_ma_file_as_reference(file_path[0], namespace)


def set_offset_parent_matrix_from_target_matrix(source: str, target: str):
    """set the .offsetParentMatrix attribute of the target node using the
    matrix of the source

    :param source: _description_
    :type source: str
    :param target: _description_
    :type target: str
    """
    if not cmds.objExists(source) or not cmds.objExists(target):
        cmds.warning("Source or target object does not exist.")
        return

    # Get the world transformation matrix of the source object
    source_matrix = cmds.xform(
        source, query=True, worldSpace=True, matrix=True)

    # Convert to MMatrix for better precision
    source_mmatrix = om.MMatrix(source_matrix)

    # Get the inverse world matrix of the target's parent (if it has one)
    parent = cmds.listRelatives(target, parent=True)
    if parent:
        parent_matrix = cmds.xform(
            parent[0], query=True, worldSpace=True, matrix=True
        )
        parent_mmatrix = om.MMatrix(parent_matrix)
        relative_matrix = source_mmatrix * parent_mmatrix.inverse()
    else:
        relative_matrix = source_mmatrix  # If no parent, use the world matrix

    # Apply the computed relative matrix to the target's offsetParentMatrix
    cmds.setAttr(
        target + ".offsetParentMatrix", list(relative_matrix), type="matrix"
    )


def set_offset_parent_matrix(
    target: str,
    matrix_values: list[float] = [
        1,
        0, 0, 0, 0, 1,
        0, 0, 0, 0, 1,
        0, 0, 0, 0, 1
    ],
):
    """Sets the .offsetParentMatrix attribute of the target node to the given
    matrix values.
    :param target: The target object whose offsetParentMatrix will be set.
    :type target: str
    :param matrix_values: A list of 16 values representing the transformation
    matrix.
    :type matrix_values: list
    """
    if not cmds.objExists(target):
        cmds.warning("Target object does not exist.")
        return

    if len(matrix_values) != 16:
        cmds.warning(
            "Invalid matrix: A transformation matrix must have 16 values."
        )
        return

    # Convert list to MMatrix for precision
    input_mmatrix = om.MMatrix(matrix_values)

    # Set the offsetParentMatrix attribute
    cmds.setAttr(
        target + ".offsetParentMatrix", list(input_mmatrix), type="matrix"
    )


DEFAULT_NSPC = "__TEMP__:"


def match_node_to_guide(node: str):
    """match node to it's guide if the node have a .rig_guid attribute

    :param node: node to move
    :type node: str
    """
    # Check if the .rig_guid attribute exists
    if not cmds.attributeQuery("rig_guid", node=node, exists=True):
        print(f"Skipping {node}: .rig_guid attribute not found.")
        pass  # TODO replace to continue if error

    # Get connections to the guide
    connections = cmds.listConnections(f"{node}.rig_guid")
    if connections:
        guid = connections[-1]
        match_all_transformation(target=node, source=guid)
    else:
        print(f"Skipping {node}: No connected guide found.")


# TODO update for descending hierachy
def match_controllers_and_buffers_to_guides(namespace: str = None):
    """Match the controllers and buffers of the scene to the corresponding
    guides' positions, prioritizing '_IN_BUF' before '_CON'.

    :param namespace: Filter the match to a specific namespace,
    defaults to None
    :type namespace: str, optional
    """
    sel = cmds.ls()

    if namespace:
        buffers = [
            node
            for node in sel
            if node.startswith(f"{namespace}") and node.endswith("_BUF") and
            "_IN_" in node and "Target" not in node
        ]  # TODO change to _IN_BUF
        controllers = [
            node
            for node in sel
            if node.startswith(f"{namespace}") and node.endswith("_CON")
        ]
    else:
        buffers = [node for node in sel if node.endswith("_BUF") and
                   "_IN_" in node and "Target" not in node]
        controllers = [node for node in sel if node.endswith("_CON")]

    # Prioritize matching buffers first
    ordered_controllers = buffers + controllers

    for controller in ordered_controllers:
        match_node_to_guide(controller)


def store_controllers_rest_pose(namespace=DEFAULT_NSPC):
    """store the rest pose of the controllers of the scene.
    can be filtered to a specific namespace

    :param namespace: namespace of the desired module, defaults to "__TEMP__"
    :type namespace: str, optional
    """
    ru = RigUtils()
    if namespace:
        controllers = [
            x
            for x in cmds.ls()
            if x.startswith(namespace)
            and x.endswith("_CON")
            and "tangent" not in x
            and "setup" not in x
        ]
    else:
        controllers = [
            x
            for x in cmds.ls()
            if x.endswith("_CON") and "tangent" not in x and "setup" not in x
        ]
    cmds.select(controllers)

    ru.setNeutralPose2()
    cmds.select(cl=True)


def disable_module_controllers_visibility(namespace: str = DEFAULT_NSPC):
    """disable the module controller group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.controllersVisibility", 0)


def enable_module_controllers_visibility(namespace: str = DEFAULT_NSPC):
    """enable the module controller group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.controllersVisibility", 1)


def disable_module_guides_visibility(namespace: str = DEFAULT_NSPC):
    """disable the module controller group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.guidesVisibility", 0)


def enable_module_guides_visibility(namespace: str = DEFAULT_NSPC):
    """disable the module controller group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.guidesVisibility", 1)

def disable_module_joints_visibility(namespace: str = DEFAULT_NSPC):
    """disable the module bones group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.jointsVisibility", 0)


def enable_module_joints_visibility(namespace: str = DEFAULT_NSPC):
    """disable the module bones group visibility

    :param namespace: namespace of the module, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    cmds.setAttr(f"{namespace}setup.jointsVisibility", 1)

def get_FK_controllers(namespace: str = ""):

    return [
        x
        for x in cmds.ls()
        if x.startswith(namespace) and x.endswith("_FK_CON")
    ]


def handle_arm_module_match_guides(namespace: str = DEFAULT_NSPC):
    """manage the controllers placement for an arm module

    :param namespace: namespace of the modules, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    match_controllers_and_buffers_to_guides(namespace=namespace)

    # set rig to IK
    # TODO add switch function
    match_all_transformation(
        target=f"{namespace}wrist_IK_CON", source=f"{namespace}wrist_JNT"
    )
    FK_controllers = get_FK_controllers(namespace=namespace)
    for controller in FK_controllers:
        match_all_transformation(
            target=controller, source=controller.replace("_FK_CON", "_JNT")
        )

    store_controllers_rest_pose(namespace=namespace)


def handle_leg_module_match_guides(namespace: str = DEFAULT_NSPC):
    """manage the controllers placement for a leg module

    :param namespace: namespace of the modules, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """
    match_controllers_and_buffers_to_guides(namespace=namespace)
    match_all_transformation(
        target=f"{namespace}ankle_IK_CON", source=f"{namespace}ankle_JNT"
    )
    # set rig to IK
    # TODO add switch function

    FK_controllers = get_FK_controllers(namespace=namespace)
    for controller in FK_controllers:
        match_all_transformation(
            target=controller, source=controller.replace("_FK_CON", "_JNT")
        )

    store_controllers_rest_pose(namespace=namespace)


def handle_hand_module_match_guides(namespace: str = DEFAULT_NSPC):
    """manage the controllers placement for an hand module

    :param namespace: namespace of the modules, defaults to DEFAULT_NSPC
    :type namespace: str, optional
    """

    match_controllers_and_buffers_to_guides(namespace=namespace)

    FK_buffers = [
        x
        for x in cmds.ls()
        if x.startswith(namespace) and x.endswith("_FK_CON")
    ]

    for buffer in FK_buffers:
        set_offset_parent_matrix_from_target_matrix(
            target=buffer, source=buffer.replace("_FK_BUF", "_GUID")
        )

    match_controllers_and_buffers_to_guides(namespace=namespace)
    store_controllers_rest_pose(namespace=namespace)

match_controllers_and_buffers_to_guides(namespace=None)
handle_arm_module_match_guides(namespace="L_arm:")
handle_arm_module_match_guides(namespace="R_arm:")
handle_leg_module_match_guides(namespace="L_leg:")
handle_leg_module_match_guides(namespace="R_leg:")
handle_hand_module_match_guides(namespace="L_hand:")
handle_hand_module_match_guides(namespace="R_hand:")



