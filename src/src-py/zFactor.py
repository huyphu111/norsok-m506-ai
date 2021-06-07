import numpy as np
AIR_MOLECULAR_WEIGHT = 28.96443
CONVERSION_FACTOR_BAR_PSI = 14.5037738


def zFactorCalc(molecularWeight, operatingPressure, operatingTemperature):
    gasSpecificGravity = molecularWeight / AIR_MOLECULAR_WEIGHT
    criticalPressure = 678 - 50 * (gasSpecificGravity - 0.5);
    criticalTemperature = 326 + 315.7 * (gasSpecificGravity - 0.5)

    pseudoPressure = operatingPressure * CONVERSION_FACTOR_BAR_PSI / criticalPressure
    pseudoTemperature = (operatingTemperature * 9/5 + 32 +459.67) / criticalTemperature

    aFactor = 1.39 * ((pseudoTemperature - 0.92)**0.5)-0.36 * pseudoTemperature - 0.1
    eFactor = 9 * (pseudoTemperature - 1)
    bFactor = (0.62 - 0.23*pseudoTemperature)*pseudoPressure + ((0.066/(pseudoTemperature - 0.86))-0.037)*(pseudoPressure**2)+((0.32*pseudoPressure**6)/(10**eFactor))
    cFactor = 0.132 - 0.32 * np.log10(pseudoTemperature)
    fFactor = 0.3106 - 0.49*pseudoTemperature + 0.1824*pseudoTemperature**2
    dFactor = 10**fFactor
    zFactor = aFactor + ((1-aFactor)/np.exp(bFactor)) + cFactor*pseudoPressure**dFactor;
    return zFactor