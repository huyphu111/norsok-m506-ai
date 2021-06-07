function [CO2_fug] = Fugacity(Op_pres, Op_temp, CO2_cont)
    CO2_part_pres = Op_pres * CO2_cont/100;
    Fug_co = 10.^(Op_pres * (0.0031 - 1.4/(Op_temp+273.15)));
    CO2_fug = CO2_part_pres * Fug_co;
end