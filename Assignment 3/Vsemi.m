%% Q3 C Assignment 3 CSC 349A
function volume = Vsemi(h)
%   Detailed explanation goes here
L=10;
r=1;
V=12.4;
volume = L*(0.5*pi*r^2-r^3*asin(h/r)-h*(r^2-h^2)^0.5)-12.4;
end

