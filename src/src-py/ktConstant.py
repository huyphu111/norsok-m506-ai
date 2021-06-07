import numpy as ny


def ktConstantCalc(operatingTemperature):
    ktConstants = ny.array([0.42, 1.59, 4.762, 8.927, 10.695, 9.949, 6.250, 7.770, 5.203])
    ktTemperatures = ny.array([5, 15, 20, 40, 60, 80, 90, 120, 150])
    ktConstant = ny.interp(operatingTemperature, ktTemperatures, ktConstants)
    return ktConstant
