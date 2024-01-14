%Q3A
function EulerRelativeError(i)
p=2.718281;
for n=0:(i-1)
    x = fix(p*(10^n))/(10^n)
    fprintf("Relative Error: ")
    relError = abs(1-x/p)*100;
    fprintf("%f%%\n",relError);
end
end

