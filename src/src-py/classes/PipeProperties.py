# noinspection PyMissingOrEmptyDocstring

import numpy as np


class PipeProperties:
    """
    Class containing all Flow Properties
    """
    def __init__(self, pipeOuterDiameter, pipeWallThickness, pipeRoughness):
        self.pipeOuterDiameter = pipeOuterDiameter
        self.pipeWallThickness = pipeWallThickness
        self.pipeRoughness = pipeRoughness
        self.pipeInnerDiameter = pipeOuterDiameter - pipeWallThickness
        self.pipeCrossSection = np.pi * self.pipeInnerDiameter ** 2
