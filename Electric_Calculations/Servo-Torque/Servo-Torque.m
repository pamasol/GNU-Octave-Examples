% Clear and close all
clc
clear
close

% MS2E04-C0BT Specs
n = 1025.125628;    % Speed [rpm]
M = 2.409853;       % Torque at 1025 1/min [Nm]
M_max = 11.915967;  % Max. torque at 1025 1/min [Nm]

disp('Angular velocity [w]')
w_n = 2 * pi * (n/60)

disp('')
disp('Power [w] at 1025 1/min')
P = M * w_n

disp('')
disp('Max. power [w] at 1025 1/min')
P_max = M_max * w_n