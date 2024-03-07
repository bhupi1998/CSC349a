%% 
%Q1b
tInterval = -3:0.01:2;
fValues = CircuitCurrent(tInterval);

plot(tInterval,fValues);
title("Electric Circuit current with zeros at i=3.5");
ylabel("Current");
xlabel("time");
hold on
yline(0);
hold off;
%% 

%*******************************************************************%
%Q1C
Newton(0.1,1e-6,20,@CircuitCurrent,@CircuitCurrentp);
%*******************************************************************%

%% 
%Q1d
fprintf("x0=0.5\n");
Newton(0.5,1e-6,20,@CircuitCurrent,@CircuitCurrentp);
fprintf("x0=0.9\n");
Newton(0.9,1e-6,20,@CircuitCurrent,@CircuitCurrentp);
%% 

%Functions
%fx
function current = CircuitCurrent(t)
    current = 9*exp(-t).*cos(2*pi*t)-3.5;
end

%fx prime
function dcurrent = CircuitCurrentp(t)
    %differentiate using matlab
    dcurrent = - 9*exp(-t).*cos(2*pi*t) - 18*pi*exp(-t).*sin(2*pi*t);
end