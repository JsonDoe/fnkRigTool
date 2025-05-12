import maya.cmds as cmds
from frankenstein.rigUtils import RigUtils
import os
import maya.api.OpenMaya as om
import re

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
            print(f"Successfully imported {file_path} "
                  f"into namespace: {namespace}")
        else:
            cmds.file(file_path, i=True)
            print(f"Successfully imported {file_path} with no namespace.")
    except Exception as e:
        print(f"Failed to import file: {e}")


def disable_module_controllers_visibility(node_name: str):
    """
    Disables visibility of the controller group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Controllers_Visibility", 0)


def enable_module_controllers_visibility(node_name: str):
    """
    Enables visibility of the controller group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Controllers_Visibility", 1)


def disable_module_guides_visibility(node_name: str):
    """
    Disables visibility of the guide group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Guides_Visibility", 0)


def enable_module_guides_visibility(node_name: str):
    """
    Enables visibility of the guide group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Guides_Visibility", 1)


def disable_module_joints_visibility(node_name: str):
    """
    Disables visibility of the joints/bones group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Joints_Visibility", 0)


def enable_module_joints_visibility(node_name: str):
    """
    Enables visibility of the joints/bones group for the specified module.

    :param node_name: Name of the setup node
    :type node_name: str
    """
    cmds.setAttr(f"{node_name}.Joints_Visibility", 1)


def set_module_to_build_mode(node_name: str = "setup"):
    """
    Switches the specified module to build mode:
    - Hides controllers and joints
    - Shows guides

    :param node_name: Name of the node
    :type node_name: str
    """
    disable_module_controllers_visibility(node_name=node_name)
    disable_module_joints_visibility(node_name=node_name)
    enable_module_guides_visibility(node_name=node_name)


def set_module_to_display_mode(node_name: str = "setup"):
    """
    Switches the specified module to build mode:
    - Hides controllers and joints
    - Shows guides

    :param node_name: Name of the node
    :type node_name: str
    """
    enable_module_controllers_visibility(node_name=node_name)
    enable_module_joints_visibility(node_name=node_name)
    disable_module_guides_visibility(node_name=node_name)


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
    objects_in_namespace = cmds.ls(
        f"{ns_to_freeze}:*", long=True, recursive=True)

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


def get_latest_module_publish_path(module_name: str) -> str:
    """
    Returns the full path to the highest version .ma file inside the publish
    folder of the specified module.

    :param module_name: The name of the module (e.g., "spine", "head", "leg")
    :return: Full path to the latest .ma file or None if not found
    """
    base_dir = os.path.abspath(
        os.path.join(
            os.path.dirname(__file__), '..', 'modules', module_name, 'publish')
            )

    if not os.path.isdir(base_dir):
        print(f"Publish directory not found for module: {module_name}")
        return None

    ma_files = [f for f in os.listdir(base_dir) if f.endswith('.ma')]
    version_pattern = re.compile(
        rf"{re.escape(module_name)}_v(\d+)\.ma", re.IGNORECASE)

    versions = []
    for filename in ma_files:
        match = version_pattern.match(filename)
        if match:
            version = int(match.group(1))
            versions.append((version, filename))

    if not versions:
        print(f"No versioned .ma files found in {base_dir}")
        return None

    # Sort by version descending and get the highest
    latest_file = sorted(versions, key=lambda x: x[0], reverse=True)[0][1]
    return os.path.join(base_dir, latest_file)


def migrate_nodes_to_namespace(old_ns: str, new_ns: str):
    """
    Creates a new namespace and moves all nodes from the old namespace into it,
    processing children first to avoid renaming conflicts.

    :param old_ns: The existing namespace containing the nodes.
    :param new_ns: The target namespace to migrate nodes into.
    """
    if not cmds.namespace(exists=old_ns):
        cmds.warning(f"Namespace '{old_ns}' does not exist.")
        return

    if not cmds.namespace(exists=new_ns):
        cmds.namespace(add=new_ns)

    # List all DAG and non-DAG nodes (combined)
    nodes = cmds.ls(f"{old_ns}:*", long=True, recursive=True) or []

    # Sort by path length descending to rename deepest nodes first
    nodes.sort(key=lambda n: len(n.split("|")), reverse=True)

    for node in nodes:
        if f"{old_ns}:" in node:
            new_name = node.replace(f"{old_ns}:", f"{new_ns}:")
            try:
                cmds.rename(node, new_name)
            except Exception as e:
                print(f"Failed to move {node} to {new_ns}: {e}")

    print(f"All nodes migrated from '{old_ns}' to '{new_ns}' (children-first).")


def delete_namespace_if_exists(namespace: str, merge_with_root: bool = True):
    """
    Deletes a namespace if it exists in the scene.

    :param namespace: The name of the namespace to delete.
    :param merge_with_root: If True, merges contents with root namespace
    before deleting.
    """
    if not cmds.namespace(exists=namespace):
        print(f"Namespace '{namespace}' does not exist.")
        return

    try:
        cmds.namespace(removeNamespace=namespace,
                       mergeNamespaceWithRoot=merge_with_root)
        print(f"Namespace '{namespace}' deleted successfully.")
    except Exception as e:
        print(f"Failed to delete namespace '{namespace}': {e}")


def find_setup_node_in_selection(module_root: str = cmds.ls(selection=True, long=True)):
    """
    Finds and returns the first child node named '*_setup' under each selected object.
    :return: List of setup node names (strings), or empty list if none found.
    """
    module_root = module_root
    if not module_root:
        cmds.warning("No object selected.")
        return []

    setup_nodes = []
    for root in module_root:
        children = cmds.listRelatives(root, allDescendents=True, fullPath=True) or []
        for node in children:
            if node.endswith("setup"):
                setup_nodes.append(node)
                break  # Stop at the first match per selected root

    return setup_nodes[0]
