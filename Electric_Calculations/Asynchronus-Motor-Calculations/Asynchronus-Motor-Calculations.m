% Clear and close all
clc
clear
close

% Motor parameters
U_230 = 230;       % Voltage delta connection
U_400 = 400;       % Voltage star connection
f = 50;            % Frequency
n = 1380;          % Rotational frequency
p = 2;             % Number of pole pairs
P = 0.18;          % Power
I_230 = 1.2;       % Current delta connection
I_400 = 0.68;      % Current star connection
cosPhi = 0.61;     % Power factor
IaIn = 2.8;        % Starting Current Ratio (IA/IN). Ratio between initial starting
                   % current IA and rated current IN.
EFF = 63;          % Efficiency (Old EFF Code according CEMEP, not current code
                   % IEC 60034-30)
tE = 26;           % Time 'tE' is the locked rotor withstand time.  It is the time
                   % taken for heating up any part of the motor from the steady
                   % state temperature up to the limiting temperature under the
                   % locked rotor condition.  This time is determined separately
                   % for stator and rotor and the minimum one is taken as the tE.
d_shaft = 0.011;   % Shaft diameter in m

% Power consumption [W]
% ------------------------------------------------------------------------------
disp('Power consumption [W]')
P_230 = sqrt(3) * U_230 * I_230 * cosPhi 
P_400 = sqrt(3) * U_400 * I_400 * cosPhi

% Power output [W]
% ------------------------------------------------------------------------------
disp('')
disp('Power output [W]')
P_230_out = P_230 * EFF/100
P_400_out = P_400 * EFF/100

% Level of efficiency
% ------------------------------------------------------------------------------
disp('')
disp('Level of efficiency calculated')
n_230 = P_230_out / P_230
n_400 = P_400_out / P_400

% Torque output [Nm]
% ------------------------------------------------------------------------------
disp('')
disp('Torque output [Nm]')

% Rotational frequency per second (not per minute)
fn = n/60;
% Angular velocity
w = 2 * pi * fn;

M_230_out = P_230_out/w
M_400_out = P_400_out/w

disp('')
disp('Force at shaft [N]')
% Radius of shaft
r_shaft = d_shaft/2;

% Force at shaft
F_230 = M_230_out/r_shaft
F_400 = M_400_out/r_shaft

disp('')
disp('Force at shaft [kg]')
F_230_kg = F_230/9.80665
F_400_kg = F_230/9.80665

% Slip
% ------------------------------------------------------------------------------
disp('')
disp('Slip [%]')
n_s = (f/p)*60;

s = ((n_s - n) / n_s) * 100
