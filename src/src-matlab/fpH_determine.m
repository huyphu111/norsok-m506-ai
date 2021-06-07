function [ fpH ] = fpH_determine(operatingTemperature, co2Fugacity, pH)
%% Declaration of Variables
    %Temperature milestone
        temperatureMilestone = [5 15 20 40 60 80 90 120 150];
        MAXIMUM_INDEX_TEMPERATURE_MILESTONE = 9;
        
%% Calculate pH using C. de Waard Corrosion Model for Wet Gas 1991
    %pH = 3.71 + 0.00417 * operatingTemperature - 0.5 * log(co2Fugacity);
    
%% Calculate pH using Norsok M-506 Model
    %pH = pH_determine(operatingTemperature, operatingPressure, co2Fugacity);
    
%% Checking pH
    %disp(pH);
%% Scan temperatureMilestone to find operatingTemperature index    
    for ITERATING_INDEX = (1:MAXIMUM_INDEX_TEMPERATURE_MILESTONE)
        if (operatingTemperature <= temperatureMilestone(ITERATING_INDEX))
            break
        end
    end

%% To find if the application will apply interpolation to the operating Temperature or not
    if ismember(operatingTemperature, temperatureMilestone)
        fpH = fpHValueSelector(operatingTemperature, pH);
    else
        temperatureMargin = [temperatureMilestone(ITERATING_INDEX), temperatureMilestone(ITERATING_INDEX - 1)];
        fpHMargin(1) = fpHValueSelector(temperatureMargin(1), pH);
        fpHMargin(2) = fpHValueSelector(temperatureMargin(2), pH);
        fpH = interp1(temperatureMargin, fpHMargin, operatingTemperature);
    end
end   



%% f(pH) Value Selector using for exact value only
function [fpH] = fpHValueSelector(operatingTemperature, pH)
    switch operatingTemperature
        case 5
            if (3.5 <= pH && pH < 4.6)
                fpH = 2.0676 - 0.2309 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 4.342 - 1.051 * pH + 0.0708 * pH.^2;
            end
        case 15
            if (3.5 <= pH && pH < 4.6)
                fpH = 2.0676 - 0.2309 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 4.986 - 1.191 * pH + 0.0708 * pH.^2;
            end
        case 20
            if (3.5 <= pH && pH < 4.6)
                fpH = 2.0676 - 0.2309 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 5.1885 - 1.2353 * pH + 0.0708 * pH.^2;
            end
        case 40
            if (3.5 <= pH && pH < 4.6)
                fpH = 2.0676 - 0.2309 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 5.1885 - 1.2353 * pH + 0.0708 * pH.^2;
            end
        case 60
            if (3.5 <= pH && pH < 4.6)
                fpH = 1.836 - 0.1818 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 15.444 - 6.1291 * pH + 0.8204 * pH.^2 - 0.0371 * pH.^3;
            end
        case 80
            if (3.5 <= pH && pH < 4.6)
                fpH = 2.6727 - 0.3636 * pH;
            elseif (4.6 <= pH && pH <= 6.5)
                fpH = 331.68 * exp(-1.2618 * pH);
            end 
        case 90
            if (3.5 <= pH && pH < 4.57)
                fpH = 3.1355 - 0.4673 * pH;              
            elseif (4.57 <= pH && pH < 5.62)
                fpH = 21254 * exp(-2.1811 * pH);
            elseif (5.62 <= pH && pH <= 6.5)
                fpH = 0.4014 - 0.0538 * pH;
            end
        case 120
            if (3.5 <= pH && pH < 4.3)
                fpH = 1.5375 - 0.125 * pH;              
            elseif (4.3 <= pH && pH < 5)
                fpH = 5.9757 - 1.157 * pH;
            elseif (5 <= pH && pH <= 6.5)
                fpH = 0.546125 - 0.071225 * pH;
            end
        case 150
            if (3.5 <= pH && pH < 3.8)
                fpH = 1;              
            elseif (3.8 <= pH && pH < 5)
                fpH = 17.634 - 7.0945 * pH + 0.715 * pH.^2;
            elseif (5 <= pH && pH <= 6.5)
                fpH = 0.037;
            end
    end
end