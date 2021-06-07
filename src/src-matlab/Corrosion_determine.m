function [corrosionRate] = Corrosion_determine(Kt, co2Fugacity ,shearStress, fpH, operatingTemperature)
%Finding the members of the operatingTemperatureMilestone
    operatingTemperatureMilestone = [20 15 5];
    if ismember(operatingTemperature, operatingTemperatureMilestone);
        corrosionRate = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperature);
    else
        if operatingTemperature > 20
            corrosionRate = Kt * co2Fugacity.^0.62 * ((shearStress/19).^(0.146 + 0.0324*log10(co2Fugacity)))*fpH;
        elseif operatingTemperature > 15
            operatingTemperatureMargin = [20 15];
            corrosionRateMargin(1) = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperatureMilestone(1));
            corrosionRateMargin(2) = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperatureMilestone(2));
            corrosionRate = interp1(operatingTemperatureMargin, corrosionRateMargin, operatingTemperature);
        elseif operatingTemperature > 5
            operatingTemperatureMargin = [15 5];
            corrosionRateMargin(1) = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperatureMilestone(2));
            corrosionRateMargin(2) = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperatureMilestone(3));
            corrosionRate = interp1(operatingTemperatureMargin, corrosionRateMargin, operatingTemperature);
        end
    end
end

function [corrosionRate] = CorrosionRateSelector(Kt, co2Fugacity ,shearStress, fpH, operatingTemperature)
    switch operatingTemperature
        case 20
            corrosionRate = Kt * co2Fugacity.^0.62 * ((shearStress/19).^(0.146 + 0.0324*log10(co2Fugacity)))*fpH;
        case 15
            corrosionRate = Kt * co2Fugacity.^0.36 * ((shearStress/19).^(0.146 + 0.0324*log10(co2Fugacity)))*fpH;
        case 5
            corrosionRate = Kt * co2Fugacity.^0.36 * fpH;
    end
end