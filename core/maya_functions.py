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
        print(f"Error: Namespace '{new_namespace}' "
              "already exists. Choose a different name.")
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
        fileFilter="Maya ASCII (*.ma)", dialogStyle=2, fileMode=1)

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
            parent[0], query=True, worldSpace=True, matrix=True)
        parent_mmatrix = om.MMatrix(parent_matrix)
        relative_matrix = source_mmatrix * parent_mmatrix.inverse()
    else:
        relative_matrix = source_mmatrix  # If no parent, use the world matrix

    # Apply the computed relative matrix to the target's offsetParentMatrix
    cmds.setAttr(
        target + ".offsetParentMatrix", list(relative_matrix), type="matrix")
