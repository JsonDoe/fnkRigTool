from rigFunctionsManager import RigFunctionsManager
from constants import HANDLER


class RigBuilder():

    def __init__(self) -> None:
        self.rfm = RigFunctionsManager()
        self.HANDLER = HANDLER

    def manage_match_modules(self, entry: str, namespace: str = "TEMP"):
        if entry == 0:
            self.rfm.match_controllers_and_buffers_to_guides(
                namespace=namespace)
        if entry == 1:
            self.rfm.handle_arm_module_match_guides(namespace=namespace)
        if entry == 2:
            self.rfm.handle_leg_module_match_guides(namespace=namespace)
        if entry == 3:
            self.rfm.handle_hand_module_match_guides(namespace=namespace)
