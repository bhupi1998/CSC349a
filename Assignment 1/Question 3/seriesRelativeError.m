function seriesRelativeError(j)
p=2.718281;
n=0;
error=Inf;
while(error>(5*10^-n))
    n=n+1;
    sum = 0;
    %   approximation
    for l=0:n
        sum = sum + 1/factorial(l);
    end
    sum
    error = abs(1-sum/p)
end
end

