%% Q3 b Assignment 3 CSC 349A
function volume = vLiquid(h)
r=3.5;
volume = (pi*h^2*(3*r-h))/3-35; %% subtracting 35 so that it becomes a "root"
end

