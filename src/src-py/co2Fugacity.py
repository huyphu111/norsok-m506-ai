def co2FugacityCalc(operatingPressure, operatingTemperature, co2Content):
    """
    :param operatingPressure: operating pressure in bar
    :param operatingTemperature: operating temperature in Celsius degree
    :param co2Content: co2 content in % (example: 10)
    :return: the CO2 fugacity of the conditions in bar
    """
    co2PartialPressure = operatingPressure * co2Content / 100;
    fugacityCoefficient = 10**(operatingPressure * (0.0031 - 1.4 / (operatingTemperature + 273.15)))
    co2Fugacity = co2PartialPressure * fugacityCoefficient
    return co2Fugacity
