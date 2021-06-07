function [pH] = pH_determine(operatingTemperature, operatingPressure, co2Fugacity)
%% Unit conversion and get handles
    operatingTemperature_F = operatingTemperature * 1.8 + 32;
    operatingTemperature_K = operatingTemperature + 273.15;
    operatingPressure_psi = operatingPressure * 14.503774;
    
    fluidSelector = 1;
    %fluidSelector = get(handles.fluidSelector, 'value'); 1 is Condense
    %Water and 2 is Formation Water
%% Chemical Properties
    ionicStrength = 0.856;
    Bicarb = 0;
    
%% Equilibrium Constants
    % KH value: Equilibrium constant for H+ ion or the H0 value
    if (0 < operatingTemperature) && (operatingTemperature <= 80)
        KH = 55.5084 / (exp(4.8 + 3934.4 / operatingTemperature_K - 941290.2 / operatingTemperature_K ^ 2))* 10 ^ (-0.00001234 * operatingPressure_psi - 0.107 * ionicStrength);
    elseif (80 < operatingTemperature) && (operatingTemperature <= 200)
        KH = 55.5084 / (exp(1713.53 * (1 - operatingTemperature_K / 647) ^ (1 / 3) / operatingTemperature_K + 3.875 + 3680.09 / operatingTemperature_K - 1198506.1 / operatingTemperature_K ^ 2)) * 10 ^ (-0.00001234 * operatingPressure_psi - 0.107 * ionicStrength);
    end

    %K0 CO2 (aq) + H2O = H2CO3
    K0 = 0.00258;
    
    %K1 H2CO3 = H+ + HCO3-
    K1 = (1 / 0.00258) * 10 ^ (-356.3094 - 0.06091964 * operatingTemperature_K + 21834.37 / operatingTemperature_K + 126.8339 * log(operatingTemperature_K) / log(10) - 1684915 / (operatingTemperature_K ^ 2) - (-0.00002564 * operatingPressure_psi - 0.491 * (ionicStrength ^ 0.5) + 0.379 * ionicStrength - 0.06506 * (ionicStrength ^ 1.5) - 0.001458 * ionicStrength * operatingTemperature_F));
    
    %K2 HCO3- = H+ + CO3 2-
    K2 = 10 ^ (-107.8871 - 0.03252849 * operatingTemperature_K + 5151.79 / operatingTemperature_K + 38.92561 * log(operatingTemperature_K) / log(10) - 563713.9 / (operatingTemperature_K ^ 2) - (-2.118 * (10 ^ -5) * operatingPressure_psi - 1.255 * (ionicStrength ^ 0.5) + 0.867 * ionicStrength - 0.174 * (ionicStrength ^ 1.5) - 0.001588 * operatingTemperature_F * ionicStrength));
    
    %Ksp FeCO3
    Ksp_FeCO3 = 10 ^ (-(10.13 + 0.0182 * operatingTemperature - 2.44 * ionicStrength ^ 0.5 + 0.72 * ionicStrength));
    
    %Kw
    KW = 10 ^ (-(29.3868 - 0.0737549 * operatingTemperature_K + 7.47881 * 10 ^ (-5) * operatingTemperature_K ^ 2));
    
%% Saturated pH Coefficient
    if fluidSelector == 1
        satpHCoefficient = 0;
    elseif fluidSelector == 2
        satpHCoefficient = 2 * Ksp_FeCO3 / (KH * K0 * K1 * K2 * co2Fugacity);
    end
    
%% Iteration Calculation
    %Initial Hion value
    if co2Fugacity > 20
        Hion = 10 ^ (-2.9);
    else
        Hion = 10 ^ (3/5);
    end
    
    %Iteration Part: By default, the iteration will be repeated 100 times
    for ITERATING_INDEX = (1 : 100)
        fHion = satpHCoefficient * Hion ^ 4 + Hion ^ 3 + Bicarb * Hion ^ 2 - Hion * (K1 * K0 * KH * co2Fugacity + KW) - 2 * K1 * K2 * K0 * KH * co2Fugacity;
        fdHion = 4 * satpHCoefficient * Hion ^ 3 + 3 * Hion * Hion + 2 * Bicarb * Hion - (K1 * K0 * KH * co2Fugacity + KW);
        oldHion = Hion;
        Hion = oldHion - fHion / fdHion;
        
        %Emergency break conditions
        if fHion == 0
            break
        end
%         if abs(Hion - oldHion) < (10 ^ -6 * oldHion)
%             fprintf('\n This does not work!!! \n\n');
%             return
%         end
    end
    
%% The pH
    pH = -(log(Hion) / 2.3026);
end