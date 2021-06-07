function [Factor_Z] = Z_determine(MW,Op_pres, Op_temp)

% Z factor Beggs and Brills model
Gas_spe_gravity = MW / 28.96443;
Critical_pres = 678 - 50 * (Gas_spe_gravity - 0.5);
Critical_temp = 326 + 315.7 * (Gas_spe_gravity - 0.5);

% 1 bar = 14.5037738 psi
Pseu_pres = Op_pres * 14.5037738 / Critical_pres;

% oF = oC * 9/5 + 32; oR = oF + 459.67
Pseu_temp = (Op_temp * 9/5 + 32 +459.67) / Critical_temp;

Factor_A = 1.39 * ((Pseu_temp - 0.92).^0.5)-0.36 * Pseu_temp - 0.1;
Factor_E = 9 * (Pseu_temp - 1);
Factor_B = (0.62 - 0.23*Pseu_temp)*Pseu_pres + ((0.066/(Pseu_temp - 0.86))-0.037)*(Pseu_pres.^2)+((0.32*Pseu_pres.^6)/(10.^Factor_E));
Factor_C = 0.132 - 0.32 * log10(Pseu_temp);
Factor_F = 0.3106 - 0.49*Pseu_temp + 0.1824*Pseu_temp.^2;
Factor_D = 10.^Factor_F;
Factor_Z = Factor_A + ((1-Factor_A)/exp(Factor_B)) + Factor_C*Pseu_pres.^Factor_D;
end