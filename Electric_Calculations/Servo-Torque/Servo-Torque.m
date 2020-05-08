% Clear and close all
clc
clear
close

% MS2E04-C0BT Specs
M_max = 13;               % Maximum torque [Nm]
n_max= 6000;              % Maximum speed [rpm]
n = 2965;                 % Rated speed [rpm]
M_standstill = 2.8;       % Standstill torque [Nm]

disp('Angular velocity [w]')
w_max = 2 * pi * (n_max/60)
w_n = 2 * pi * (n/60)

disp('')
disp('Power [w] at 2965 1/min with Standstill torque')
P = M_standstill * w_n

disp('')
disp('Power [w] at 2965 1/min with Maximum torque')
P_max = M_max * w_n