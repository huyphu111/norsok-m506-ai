function [Kt] = Kt_determine(Op_temp)
Kt_const = [ 0.42 1.59 4.762 8.927 10.695 9.949 6.250 7.770 5.203 ];
Kt_temp = [ 5 15 20 40 60 80 90 120 150 ];
% if ((Op_temp < 5.00) | (Op_temp > 150.00))
%     fprintf('invalid Operating Temperature for Norsok:\nOperating Temperature must >5 and <150 oC\n');
% else
Kt = interp1(Kt_temp, Kt_const, Op_temp);
% end
end