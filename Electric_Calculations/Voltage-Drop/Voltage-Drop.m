% Clear and close all
clc
clear
close

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculation for DC current
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

l = 50;         % Cable length [m]
A = 1;          % Cable cross-section [mm2]            
rho = 0.01786;  % Resistivity [ohm * mm2 / m]

Usrc = 24;      % Source [V]
I = 1.5;            % Current [A]

disp('Cable resistance [ohm]')
R = 2 * ((rho * l/A))

disp('Voltage Load [V]')
Uld = Usrc - (R * I)
