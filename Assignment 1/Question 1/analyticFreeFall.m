function analyticFreeFall(m,c,g,t0,v0,tn,n)
% analytic solution to find free falling vellocity 
%   print headings and initial conditions
fprintf('values of t    v(t)\n')
fprintf('%8.3f',t0),fprintf('%19.4f\n',v0)
%   compute step size h
h=(tn-t0)/n;
t=0;
% compute velocity
for i=1:n 
    t=t0+h*i;
    v=(g*m/c)*(1-exp(-c*t/m))+v0;
    fprintf('%8.3f',t), fprintf('%19.4f\n',v)
end
end

