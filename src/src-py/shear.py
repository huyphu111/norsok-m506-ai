
def shearCalc(flowProperties,
              pipeProperties,
              operatingPressure, operatingTemperature, zFactor):
    """
    :param flowProperties: flow properties class
    :param pipeProperties: pipe properties class
    :param zFactor:
    :param operatingPressure:
    :param operatingTemperature: operating temperature in Celsius degree.
    """
    molecularWeight = flowProperties.molecularWeight
    gasRate = flowProperties.gasRate
    condensateRate = flowProperties.condensateRate
    condensateAPI = flowProperties.condensateAPI
    pipeOuterDiameter = pipeProperties.pipeOuterDiameter
    pipeInnerDiameter = pipeProperties.pipeInnerDiameter
    pipeCrossSection = pipeProperties.pipeCrossSection
    pipeWallThickness = pipeProperties.pipeWallThickness
    pipeRoughness = pipeProperties.pipeRoughness

