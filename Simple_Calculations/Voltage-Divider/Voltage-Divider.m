% Clear and close all
clc
clear
close

% Collecting user inputs via pop-up window
imshow ('Voltage-Divider.png')
prompt = {'U [V]', 'I [A]', 'R1 [ohm]', 'R2 [ohm]'};
userinput = inputdlg (prompt, 'Voltage Divider Inputs');

% Convert user input from string matrix to double values
U = str2double(userinput(1,1));
I = str2double(userinput(2,1));
R1 = str2double(userinput(3,1));
R2 = str2double(userinput(4,1));

if (~isnan(U) && ~isnan(I) && isnan(R1) && isnan(R2))
    R = U/I;
    % Pop-up
    result = num2str(R);
    msg = 'Total resistance (R1+R2) [ohm]:';
    msgbox({msg;result;}, 'Total resistance');
elseif (~isnan(U) && ~isnan(I) && ~isnan(R1) && isnan(R2))
    R = U/I;
    R2 = R - R1;
    % Pop-up
    result = num2str(R2)
    msg = 'Resistance of R2 [ohm]:';
    msgbox({msg;result;}, 'R2 resistance');    
elseif (~isnan(U) && ~isnan(I) && isnan(R1) && ~isnan(R2))
    R = U/I;
    R1 = R - R2;
    % Pop-up
    result = num2str(R1)
    msg = 'Resistance of R1 [ohm]:';
    msgbox({msg;result;}, 'R1 resistance');
elseif (isnan(U) && ~isnan(I) && ~isnan(R1) && ~isnan(R2))
    U = (R1+R2) * I;
    % Pop-up
    result = num2str(U)
    msg = 'Voltage U [V]:';
    msgbox({msg;result;}, 'Voltage U');
elseif (~isnan(U) && isnan(I) && ~isnan(R1) && ~isnan(R2))
    I = U/(R1+R2);
    % Pop-up
    result = num2str(I)
    msg = 'Current I [A]:';
    msgbox({msg;result;}, 'Current I');
else
    errordlg('Please provide more arguments', 'Error');
endif

