

%Q1b
tInterval = -3:0.01:2;
fValues = CircuitCurrent(tInterval);
plot(tInterval,fValues,'*');
hold on;
syms t;
fplot(CircuitCurrent(t),[-3 2]);
hold off;
%fx
function current = CircuitCurrent(t)
    current = 9*exp(-t).*cos(2*pi*t)-3.5;
end

%fx prime
function dcurrent = dCircuitCurrent(t)
    %differentiate using matlab
    dcurrent = - 9*exp(-t).*cos(2*pi*t) - 18*pi*exp(-t).*sin(2*pi*t);
end