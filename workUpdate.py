import maya.cmds as cmds
from frankenstein.rigUtils import RigUtils
import os
import maya.api.OpenMaya as om


"""
match_controllers_and_buffers_to_guides(namespace=None)
handle_arm_module_match_guides(namespace="L_arm:")
handle_arm_module_match_guides(namespace="R_arm:")
handle_leg_module_match_guides(namespace="L_leg:")
handle_leg_module_match_guides(namespace="R_leg:")
handle_hand_module_match_guides(namespace="L_hand:")
handle_hand_module_match_guides(namespace="R_hand:")
"""

DEFAULT_NSPC = ""


def duplicate_special_selected():
    """
    Duplicates the current selection using Maya's 'Duplicate Special' settings:
    - 1 copy
    - Group under parent
    - No smart transform
    - Duplicate input graph: ON
    - Input connections: OFF
    - Instance leaf nodes: OFF
    """
    selection = cmds.ls(selection=True)
    if not selection:
        cmds.confirmDialog(
            title="No Selection",
            message="Please select one or more modules to duplicate.",
            button=["OK"],
            defaultButton="OK",
            icon="warning"
        )
        return

    duplicates = cmds.duplicate(
        smartTransform=False,
        returnRootsOnly=True,
        instanceLeaf=False,
        upstreamNodes=True,       # Duplicate input graph = True
        inputConnections=False,   # Don't duplicate input connections
        renameChildren=True
    )

    print(f"Duplicated: {duplicates}")


def import_ma_file(file_path, namespace: str = "__BUILD__"):
    """
    Imports a .ma file into the current Maya scene.

    :param file_path: The absolute path to the .ma file.
    :param namespace: Optional namespace to apply to imported nodes.
    """
    if not os.path.exists(file_path):
        print(f"Error: File not found - {file_path}")
        return

    try:
        if namespace:
            cmds.file(file_path, i=True, namespace=namespace)
            print(f"Successfully imported {file_path} into namespace: {namespace}")
        else:
            cmds.file(file_path, i=True)
            print(f"Successfully imported {file_path} with no namespace.")
    except Exception as e:
        print(f"Failed to import file: {e}")


def disable_module_controllers_visibility(parent: str):
    """
    Disables visibility of the controller group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.controllersVisibility", 0)


def enable_module_controllers_visibility(parent: str):
    """
    Enables visibility of the controller group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.controllersVisibility", 1)


def disable_module_guides_visibility(parent: str):
    """
    Disables visibility of the guide group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.guidesVisibility", 0)


def enable_module_guides_visibility(parent: str):
    """
    Enables visibility of the guide group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.guidesVisibility", 1)


def disable_module_joints_visibility(parent: str):
    """
    Disables visibility of the joints/bones group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.jointsVisibility", 0)


def enable_module_joints_visibility(parent: str):
    """
    Enables visibility of the joints/bones group for the specified module.

    :param parent: Name of the parent node
    :type parent: str
    """
    cmds.setAttr(f"{parent}setup.jointsVisibility", 1)


def set_module_to_build_mode(module_name: str):
    """
    Switches the specified module to build mode:
    - Hides controllers and joints
    - Shows guides

    :param module_name: Name of the module (used as the parent node prefix)
    :type module_name: str
    """
    parent = module_name + "¦"
    disable_module_controllers_visibility(parent=parent)
    disable_module_joints_visibility(parent=parent)
    enable_module_guides_visibility(parent=parent)


def set_module_to_display_mode(module_name: str):
    """
    Switches the specified module to display mode:
    - Shows controllers and joints
    - Hides guides

    :param module_name: Name of the module (used as the parent node prefix)
    :type module_name: str
    """
    parent = module_name + "¦"
    enable_module_controllers_visibility(parent=parent)
    enable_module_joints_visibility(parent=parent)
    disable_module_guides_visibility(parent=parent)


def freeze_namespace(ns_to_freeze="default"):
    """
    Renames all objects in the specified namespace by prefixing their names
    with the namespace, then removes the namespace.

    :param ns_to_freeze: The namespace to freeze.
    """
    # Validate namespace
    if not cmds.namespace(exists=ns_to_freeze):
        print(f"Namespace '{ns_to_freeze}' does not exist.")
        return

    # Get all objects in the namespace
    objects_in_namespace = cmds.ls(f"{ns_to_freeze}:*", long=True, recursive=True)

    # Sort to avoid hierarchy rename issues
    for obj in sorted(objects_in_namespace, key=len, reverse=True):
        short_name = obj.split(":")[-1]
        new_name = f"{ns_to_freeze}_{short_name}"
        try:
            cmds.rename(obj, new_name)
        except Exception as e:
            print(f"Could not rename {obj}: {e}")

    # Attempt to remove the namespace
    try:
        cmds.namespace(removeNamespace=ns_to_freeze)
        print(f"Namespace '{ns_to_freeze}' has been frozen and removed.")
    except Exception as e:
        print(f"Could not remove namespace '{ns_to_freeze}': {e}")


def add_prefix_and_remove_namespaces():
    """
    Prefixes all objects from non-default namespaces with their namespace name,
    then removes those namespaces from the scene.
    """
    # Get all existing namespaces
    namespaces = cmds.namespaceInfo(listOnlyNamespaces=True) or []

    # Exclude Maya's default namespaces
    default_namespaces = ["UI", "shared"]
    namespaces = [ns for ns in namespaces if ns not in default_namespaces]

    for ns in namespaces:
        # Get all objects under this namespace
        objects_in_namespace = cmds.ls(f"{ns}:*", long=True, recursive=True)

        # Sort from longest to shortest to avoid hierarchy renaming conflicts
        for obj in sorted(objects_in_namespace, key=len, reverse=True):
            short_name = obj.split(":")[-1]  # Remove namespace from name
            new_name = f"{ns}_{short_name}"  # Prefix with namespace

            # Attempt to rename the object
            try:
                cmds.rename(obj, new_name)
            except Exception as e:
                print(f"Could not rename {obj}: {e}")

        # Try to remove the now-empty namespace
        try:
            cmds.namespace(removeNamespace=ns)
        except Exception as e:
            print(f"Could not remove namespace '{ns}': {e}")


def get_nodes_with_rig_guid_in_scope(scope="scene"):
    """
    Retrieves nodes with a connected 'rig_guid' attribute within a given scope.

    :param scope: "scene" for the whole scene or "selection" for currently
    selected hierarchy
    :return: Sorted list of nodes containing 'rig_guid'
    """
    if scope == "selection":
        selection = cmds.ls(selection=True, long=True)
        if not selection:
            cmds.warning("No hierarchy selected.")
            return []
        nodes = cmds.listRelatives(
            selection, allDescendents=True, fullPath=True) or []
        nodes += selection
    else:
        nodes = cmds.ls(long=True)

    nodes_with_guid = []
    for node in nodes:
        if cmds.attributeQuery("rig_guid", node=node, exists=True):
            connections = (
                cmds.listConnections(
                    f"{node}.rig_guid", source=True, destination=False)
                or []
            )
            if connections:
                nodes_with_guid.append(node)

    nodes_with_guid.sort(key=lambda n: len(n.split("|")))
    return nodes_with_guid


def match_transform(
        source, target, match_translation=True, match_rotation=True):
    """
    Matches the transform of the source node to the target node.

    :param source: Source node to move
    :param target: Target node to match
    :param match_translation: Match translation if True
    :param match_rotation: Match rotation if True
    :return: True if successful, False otherwise
    """
    if not cmds.objExists(source) or not cmds.objExists(target):
        cmds.warning(f"Cannot align. Missing node: {source} or {target}")
        return False

    if match_translation:
        translation = cmds.xform(
            target, query=True, worldSpace=True, translation=True)
        cmds.xform(source, worldSpace=True, translation=translation)

    if match_rotation:
        rotation = cmds.xform(
            target, query=True, worldSpace=True, rotation=True)
        cmds.xform(source, worldSpace=True, rotation=rotation)

    return True


def apply_offset_parent_matrix(node):
    """
    Adds the current local matrix to the offsetParentMatrix and resets
    local transformations.

    :param node: Node to apply transformation to
    """
    if not cmds.objExists(node):
        return

    local_matrix = om.MMatrix(
        cmds.xform(node, query=True, matrix=True, objectSpace=True)
    )
    offset_matrix = om.MMatrix(cmds.getAttr(f"{node}.offsetParentMatrix"))

    new_offset_matrix = local_matrix * offset_matrix
    new_offset_matrix_list = [new_offset_matrix[i] for i in range(16)]

    cmds.setAttr(
        f"{node}.offsetParentMatrix", new_offset_matrix_list, type="matrix")

    cmds.setAttr(f"{node}.translate", 0, 0, 0, type="double3")
    cmds.setAttr(f"{node}.rotate", 0, 0, 0, type="double3")
    cmds.setAttr(f"{node}.scale", 1, 1, 1, type="double3")


def snap_hierarchy_to_guid(scope="scene"):
    """
    Aligns nodes with the 'rig_guid' attribute to their associated guides.

    :param scope: "scene" for the whole scene or "selection" for currently
    selected hierarchy
    """
    nodes = get_nodes_with_rig_guid_in_scope(scope)
    if not nodes:
        cmds.warning(f"No nodes with 'rig_guid' found in scope: {scope}.")
        return

    for node in nodes:
        guide_list = (
            cmds.listConnections(
                f"{node}.rig_guid", source=True, destination=False)
            or []
        )
        if not guide_list:
            print(f"No guide found for node: {node}")
            continue

        guide = guide_list[0]
        print(f"Processing '{node}' with guide '{guide}'")

        if "CON" in node:
            match_transform(
                node, guide, match_translation=True, match_rotation=True)
            apply_offset_parent_matrix(node)
        elif "_T_" in node:
            match_transform(
                node, guide, match_translation=True, match_rotation=False)
        elif "_RT_" in node:
            match_transform(
                node, guide, match_translation=True, match_rotation=True)
        else:
            print(f"Node '{node}' does not match any known type.")


"""
if __name__ == "__main__":
    scope = "selection" if cmds.ls(selection=True) else "scene"
    snap_hierarchy_to_guid(scope)
"""
