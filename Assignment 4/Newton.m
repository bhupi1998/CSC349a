%% Q1a
function root = Newton(x0,e,imax,f,df) %df is f prime, e is epsilon
    i=1;
    fprintf(' iteration approximation\n');
    while i<= imax
        root = x0-f(x0)/df(x0);
        fprintf('%6.0f %18.8f \n', i, root);
        if abs(1-x0/root)<e
            return
        end
        i=i+1;
        x0=root;
    end
    fprintf(' failed to converge in %g interations\n', imax);
end

