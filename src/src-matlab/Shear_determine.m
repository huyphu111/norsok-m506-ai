function [Shear_stress] = Shear_determine(MW, Rate_gas, Rate_cond, Cond_API, OD_pipe, WT_pipe, rough_pipe, Op_pres, Op_temp, Factor_Z)
    %Assumptions
    Water_dens = 1000;
    Air_mole_dens = 29;
    Cond_vis = 1.1;
    Gas_vis = 0.03;
    Water_vis = 0.5041;
    Inversion_point = 0.5;
    
    
    %Liquid Fraction
    Liq_frac = (Rate_cond) / (Rate_cond + Rate_gas * 10^6)
    
    %Unit Conversion
    Op_temp_f = Op_temp * 1.8 + 32;
    
    %Density Calculation
    Spe_grav = MW / Air_mole_dens;
    Gas_dens = 2.7 * 14.5 * 16.018 * Op_pres * Spe_grav / (Factor_Z * (460 + Op_temp_f));
    Liq_dens = (141.5 * Water_dens)/(Cond_API + 131.5);
    Mix_dens = Liq_dens * Liq_frac + Gas_dens*(1-Liq_frac);

    %Velocity Calculation
    ID_pipe = OD_pipe - 2 * WT_pipe
    cross_pipe = pi * (ID_pipe /1000 /2).^2;
    Liq_svel = Rate_cond /24 /3600 / cross_pipe;
    Gas_svel = Rate_gas / (Gas_dens * 24 * 3600 * cross_pipe * 520) * (10^6 * 2.7 * 14.7 * Spe_grav * 16.018);
    Mix_vel = Liq_svel + Gas_svel;

    %Mixture Viscosity
    Mix_vis = Cond_vis * Liq_frac + Gas_vis*(1-Liq_frac)

    %Friction Factor
    reynolds = Mix_vel * Mix_dens * (ID_pipe/1000) * 1000 / Mix_vis
    Factor_fric = 0.001375 * (1 + ((20000*(rough_pipe/1000)/(ID_pipe/1000) + 10^6 / reynolds)^0.33))

    %Shear Stress
    Shear_stress = 0.5 * Mix_dens * Factor_fric * Mix_vel ^ 2;
end