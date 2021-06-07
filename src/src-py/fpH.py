import numpy as np

global fpHSwitch


def operatingTemperature5TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 2.0676 - 0.2309 * pH
    elif 4.6 <= pH <= 6.5:
        return 4.342 - 1.051 * pH + 0.0708 * pH ** 2


def operatingTemperature15TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 2.0676 - 0.2309 * pH
    elif 4.6 <= pH <= 6.5:
        return 4.986 - 1.191 * pH + 0.0708 * pH ** 2


def operatingTemperature20TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 2.0676 - 0.2309 * pH
    elif 4.6 <= pH <= 6.5:
        return 5.1885 - 1.2353 * pH + 0.0708 * pH ** 2


def operatingTemperature40TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 2.0676 - 0.2309 * pH
    elif 4.6 <= pH <= 6.5:
        return 5.1885 - 1.2353 * pH + 0.0708 * pH ** 2


def operatingTemperature60TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 1.836 - 0.1818 * pH
    elif 4.6 <= pH <= 6.5:
        return 15.444 - 6.1291 * pH + 0.8204 * pH ** 2 - 0.0371 * pH ** 3


def operatingTemperature80TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.6:
        return 2.6727 - 0.3636 * pH
    elif 4.6 <= pH <= 6.5:
        return 331.68 * np.exp(-1.2618 * pH)


def operatingTemperature90TofpH(pH):
    """
    :param pH:
    """
    if 3.5 <= pH < 4.57:
        return 3.1355 - 0.4673 * pH
    elif 4.57 <= pH < 5.62:
        return 21254 * np.exp(-2.1811 * pH)
    elif 5.62 <= pH <= 6.5:
        return 0.4014 - 0.0538 * pH


def operatingTemperature120TofpH(operatingTemperature, pH):
    """
    :param operatingTemperature:
    :param pH:
    """
    print(15)


def operatingTemperature150TofpH(operatingTemperature, pH):
    """
    :param operatingTemperature:
    :param pH:
    """
    print(15)


fpHSwitch = {
    5: operatingTemperature5TofpH,
    15: operatingTemperature15TofpH,
    20: operatingTemperature20TofpH,
    40: operatingTemperature40TofpH,
    60: operatingTemperature60TofpH,
    80: operatingTemperature80TofpH,
    90: operatingTemperature90TofpH,
    120: operatingTemperature120TofpH,
    150: operatingTemperature150TofpH,
}


def fpHCalc(operatingTemperature, pH):
    """
    :param operatingTemperature: Operating Temperature in Celsius.
    :param pH: pH value
    :return f(pH) for the pH and operating temperature
    """

    temperatureMilestone = [5, 15, 20, 40, 60, 80, 90, 120, 150]
    for i in range(0, len(temperatureMilestone) - 1):
        if operatingTemperature <= temperatureMilestone[i]:
            break

    if operatingTemperature in temperatureMilestone:
        return fpHValueSelector(operatingTemperature, pH)
    else:
        fpHMargins = [None, None]
        temperatureMargins = [temperatureMilestone[i], temperatureMilestone[i-1]]
        fpHMargins[0] = fpHValueSelector(temperatureMargins[0], pH)
        fpHMargins[1] = fpHValueSelector(temperatureMargins[1], pH)
        return np.interp(operatingTemperature, temperatureMargins, fpHMargins)


def fpHValueSelector(operatingTemperature, pH):
    """
    Using for exact value of operating temperature and pH range.
    :param operatingTemperature: operating temperature in Celsius.
    :param pH: pH value
    """
    return fpHSwitch.get(operatingTemperature)(pH)
