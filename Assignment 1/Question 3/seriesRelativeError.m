function seriesRelativeError(j)
p=2.718281;
n=0;
error=Inf;
sigFigs=j;
while(error>(5*10^-sigFigs))
    sSf=sigFigs; %sig figs of the approximation
    sum = 0;
    %   approximation
    for l=0:n
        sum = sum + 1/factorial(l);
    end
    error = abs(1-sum/p);
    while(error>(5*10^-sSf) && sSf>=0)
        sSf= sSf-1;
    end
    % to display in percentage
    percError = error*100;
    fprintf("Approximation has %d sig Figs and n=%d\n", sSf,n);
    fprintf("%Sum = 2.6f\n",sum);
    fprintf("Relative Error: %2.6f%%\n\n",percError);
    n=n+1;
end
end

