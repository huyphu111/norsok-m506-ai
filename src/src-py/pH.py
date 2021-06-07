import numpy as np

CONVERSION_FACTOR_BAR_PSI = 14.5037738


def pHCalc(operatingTemperature, operatingPressure, co2Fugacity):
    """
    :param operatingTemperature: Operating Temperature in Celsius degrees
    :param operatingPressure: Operating Pressure in bar
    :param co2Fugacity: CO2 Fugacity in bar
    """

    operatingTemperatureF = operatingTemperature * 1.8 + 32
    operatingTemperatureK = operatingTemperature + 273.15
    operatingPressurePsi = operatingPressure * CONVERSION_FACTOR_BAR_PSI

    fluidSelection = 1
    # 1 is Condense Water - 2 is Formation Water

    # Chemical Properties Constants
    ionicStrength = 0.856
    biCarb = 0

    if (0 < operatingTemperature) and (operatingTemperature <= 80):
        KH = 55.5084 / (np.exp(4.8 + 3934.4 / operatingTemperatureK - 941290.2 / operatingTemperatureK ** 2)) \
             * 10 ** (-0.00001234 * operatingPressurePsi - 0.107 * ionicStrength)
    elif (80 < operatingTemperature) and (operatingTemperature <= 200):
        KH = 55.5084 / (np.exp(1713.53 * (1 - operatingTemperatureK / 647) ** (1 / 3) / operatingTemperatureK + 3.875
                               + 3680.09 / operatingTemperatureK - 1198506.1 / operatingTemperatureK ** 2)) \
             * 10 ** (-0.00001234 * operatingPressurePsi - 0.107 * ionicStrength)
    K0 = 0.00258
    K1 = (1 / 0.00258) * 10 ** (-356.3094 - 0.06091964 * operatingTemperatureK + 21834.37 / operatingTemperatureK
                                + 126.8339 * np.log(operatingTemperatureK) / np.log(10) - 1684915
                                / (operatingTemperatureK ** 2) - (-0.00002564 * operatingPressurePsi - 0.491
                                                                  * (ionicStrength ** 0.5) + 0.379 * ionicStrength
                                                                  - 0.06506 * (ionicStrength ** 1.5) - 0.001458
                                                                  * ionicStrength * operatingTemperatureF))
    K2 = 10 ** (-107.8871 - 0.03252849 * operatingTemperatureK + 5151.79 / operatingTemperatureK + 38.92561
                * np.log(operatingTemperatureK) / np.log(10) - 563713.9
                / (operatingTemperatureK ** 2) - (-2.118 * (10 ** -5) * operatingPressurePsi
                                                  - 1.255 * (ionicStrength ** 0.5) + 0.867 * ionicStrength
                                                  - 0.174 * (ionicStrength ** 1.5) - 0.001588
                                                  * operatingTemperatureF * ionicStrength))
    KspFeCO3 = 10 ** (-(10.13 + 0.0182 * operatingTemperature - 2.44 * ionicStrength ** 0.5 + 0.72 * ionicStrength))
    KW = 10 ** (-(29.3868 - 0.0737549 * operatingTemperatureK + 7.47881 * 10 ** (-5) * operatingTemperatureK ** 2))

    satPHCoefficient = 0
    if fluidSelection == 1:
        satPHCoefficient = 0
    elif fluidSelection == 2:
        satPHCoefficient = 2 * KspFeCO3 / (KH * K0 * K1 * K2 * co2Fugacity)

    if co2Fugacity > 20:
        hIon = 10 ** (-2.9)
    else:
        hIon = 10 ** (3 / 5)

    for ITERATING_INDEX in range(1, 100):
        fHIon = satPHCoefficient * hIon ** 4 + hIon ** 3 + biCarb * hIon ** 2 - \
                hIon * (K1 * K0 * KH * co2Fugacity + KW) - 2 * K1 * K2 * K0 * KH * co2Fugacity
        fdHIon = 4 * satPHCoefficient * hIon ** 3 + 3 * hIon * hIon + 2 * biCarb * hIon \
                 - (K1 * K0 * KH * co2Fugacity + KW)
        oldHIon = hIon
        hIon = oldHIon - fHIon / fdHIon

        if fHIon == 0:
            break

    pH = -(np.log(hIon) / 2.3026)
    return pH
