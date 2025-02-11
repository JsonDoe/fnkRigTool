import maya.cmds as cmds
from mayaFunctionManager import MayaFunctionManager
from frankenstein.rigUtils import RigUtils


class RigFunctionsManager():
    """rig functions manager
    """
    def __init__(self, namespace: str = "TEMP") -> None:

        self.namespace = namespace
        self.mayaManager = MayaFunctionManager()
        self.ru = RigUtils()

    def match_node_to_guide(self, node: str):
        """match node to it's guide if the node have a .rig_guid attribute

        :param node: node to move
        :type node: str
        """
        # Check if the .rig_guid attribute exists
        if not cmds.attributeQuery("rig_guid", node=node, exists=True):
            print(f"Skipping {node}: .rig_guid attribute not found.")
            pass # TODO replace to continue if error

        # Get connections to the guide
        connections = cmds.listConnections(f"{node}.rig_guid")

        if connections:
            guid = connections[-1]
            self.mayaManager.match_all_transformation(target= node, source=guid)
        else:
            print(f"Skipping {node}: No connected guide found.")


    def match_node_to_guide(self, node: str):
        """match node to it's guide if the node have a .rig_guid attribute

        :param node: node to move
        :type node: str
        """
    # Check if the .rig_guid attribute exists
        if not cmds.attributeQuery("rig_guid", node=node, exists=True):
            print(f"Skipping {node}: .rig_guid attribute not found.")
            pass # TODO replace to continue if error
        # Get connections to the guide
        connections = cmds.listConnections(f"{node}.rig_guid")
        if connections:
            guid = connections[-1]
            self.mayaManager.match_all_transformation(target= node, source=guid)
        else:
            print(f"Skipping {node}: No connected guide found.")


    # TODO update for descending hierachy
    def match_controllers_and_buffers_to_guides(self, namespace: str = None):
        """Match the controllers and buffers of the scene to the corresponding
        guides' positions, prioritizing '_IN_BUF' before '_CON'.

        :param namespace: Filter the match to a specific namespace,
        defaults to None
        :type namespace: str, optional
        """
        sel = cmds.ls()
        if namespace:
            buffers = [node for node in sel if node.startswith(f"{namespace}") and
                       node.endswith("_BUF")]  # TODO change to _IN_BUF
            controllers = [node for node in sel if node.startswith(f"{namespace}")
                           and node.endswith("_CON")]
        else:
            buffers = [node for node in sel if node.endswith("_IN_BUF")]
            controllers = [node for node in sel if node.endswith("_CON")]
        # Prioritize matching buffers first
        ordered_controllers = buffers + controllers
        for controller in ordered_controllers:
            self.match_node_to_guide(controller)


    def store_controllers_rest_pose(self, namespace = "TEMP"):
        """store the rest pose of the controllers of the scene.
        can be filtered to a specific namespace

        :param namespace: namespace of the desired module, defaults to "__TEMP__"
        :type namespace: str, optional
        """
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
        self.ru.setNeutralPose2()
        cmds.select(cl=True)


    def disable_module_controllers_visibility(self, namespace: str = "TEMP"):
        """disable the module controller group visibility

        :param namespace: namespace of the module, defaults to "TEMP"
        :type namespace: str, optional
        """
        cmds.setAttr(f"{namespace}controller_GRP.visibility", 0)


    def enable_module_controllers_visibility(self, namespace: str = "TEMP"):
        """enable the module controller group visibility

        :param namespace: namespace of the module, defaults to "TEMP"
        :type namespace: str, optional
        """
        cmds.setAttr(f"{namespace}controller_GRP.visibility", 1)


    def disable_module_guides_visibility(self, namespace: str = "TEMP"):
        """disable the module controller group visibility

        :param namespace: namespace of the module, defaults to "TEMP"
        :type namespace: str, optional
        """
        cmds.setAttr(f"{namespace}setup.guide_visibility", 0)


    def enable_module_guides_visibility(self, namespace: str = "TEMP"):
        """disable the module controller group visibility

        :param namespace: namespace of the module, defaults to "TEMP"
        :type namespace: str, optional
        """
        cmds.setAttr(f"{namespace}setup.guide_visibility", 1)


    def get_FK_controllers(self, namespace: str = "TEMP"):
        """get all the FK controllers from a namespace

        :param namespace: target module namespace, defaults to "TEMP"
        :type namespace: str, optional
        :return: all the FK controllers names
        :rtype: list[str]
        """
        return [
            x for x in cmds.ls() if x.startswith(namespace)
            and x.endswith("_FK_CON")
            ]


    def handle_arm_module_match_guides(self, namespace: str = "TEMP"):
        """manage the controllers placement for an arm module

        :param namespace: namespace of the modules, defaults to "TEMP"
        :type namespace: str, optional
        """
        self.match_controllers_and_buffers_to_guides(namespace=namespace)
        # set rig to IK
        # TODO add switch function
        self.mayaManager.match_all_transformation(
            target=f"{namespace}wrist_IK_CON", source=f"{namespace}wrist_JNT")
        FK_controllers = self.get_FK_controllers(namespace=namespace)
        for controller in FK_controllers:
            self.mayaManager.match_all_transformation(
                target=controller, source=controller.replace("_FK_CON", "_JNT"))
        self.store_controllers_rest_pose(namespace=namespace)


    def handle_leg_module_match_guides(self, namespace: str = "TEMP"):
        """manage the controllers placement for a leg module

        :param namespace: namespace of the modules, defaults to "TEMP"
        :type namespace: str, optional
        """
        self.match_controllers_and_buffers_to_guides(namespace=namespace)
        self.mayaManager.match_all_transformation(
            target=f"{namespace}ankle_IK_CON", source=f"{namespace}ankle_JNT")
        # set rig to IK
        # TODO add switch function

        FK_controllers = self.get_FK_controllers(namespace=namespace)
        for controller in FK_controllers:
            self.mayaManager.match_all_transformation(
                target=controller, source=controller.replace("_FK_CON", "_JNT"))
        self.store_controllers_rest_pose(namespace=namespace)


    def handle_hand_module_match_guides(self, namespace: str = "TEMP"):
        """manage the controllers placement for an hand module

        :param namespace: namespace of the modules, defaults to "TEMP"
        :type namespace: str, optional
        """
        self.match_controllers_and_buffers_to_guides(namespace=namespace)

        FK_buffers = [x for x in cmds.ls() if x.startswith(namespace) and
                      x.endswith("_FK_CON")]
        for buffer in FK_buffers:
            self.mayaManager.set_offset_parent_matrix_from_target_matrix(
                target=buffer, source=buffer.replace("_FK_BUF", "_GUID"))
        self.match_controllers_and_buffers_to_guides(namespace=namespace)
        self.store_controllers_rest_pose(namespace=namespace)
