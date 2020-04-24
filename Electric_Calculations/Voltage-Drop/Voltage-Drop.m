% Clear and close all
clc
clear
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculation for DC current
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

l = 50;         % Cable length [m]
A = 1.0;          % Cable cross-section [mm2]            
rho = 0.01786;  % Resistivity [ohm * mm2 / m]

Usrc = 24;      % Source [V]
I = 2;          % Current [A]

disp('Cable resistance [ohm]')
R = 2 * ((rho * l/A))
disp('')

disp('Voltage Load [V]')
Uld = Usrc - (R * I)

disp('')
disp('Voltage Drop [%]')
Vdrop = (Usrc - Uld)* 100 / Usrc

% Plot with cable examples from 0 up to 50m and cable cross section from 0.5mm2
% to 4.0mm2
l_variable = linspace(0, 60);
R05 = 2 * ((rho * l_variable/0.5));
R10 = 2 * ((rho * l_variable/1));
R15 = 2 * ((rho * l_variable/1.5));
R25 = 2 * ((rho * l_variable/2.5));
R40 = 2 * ((rho * l_variable/4));

figure (1);
plot (l_variable, (Usrc - R05 * I));
hold on
plot (l_variable, (Usrc - R10 * I));
plot (l_variable, (Usrc - R15 * I));
plot (l_variable, (Usrc - R25 * I));
plot (l_variable, (Usrc - R40 * I));

xlabel ('Cable length [m]');
ylabel ('Voltage at load [V]');
title ('Voltage Drop with 24 VDC source at 2 Amps');
legend ({'0.5mm2', '1.0mm2','1.5mm2', '2.5mm2', '4.0mm2'}, 'Location','southwest');
grid minor;
