%   Question 2 a
function Euler2(k,Ta,t0,T0,tn,h)
%   print headings and initial conditions
fprintf('values of t(min)    approximations T(t)\n')
fprintf('%8.3f',t0),fprintf('%19.4f\n',T0)
%   compute # of steps
n=(tn-t0)/h;
%   set t,v to the initial values
t=t0;
T=T0;
%   compute v(t) over n time steps using Euler's method
for i=1:n 
    T=T+-k*(T-Ta)*h;
    t=t+h;
    fprintf('%8.3f',t), fprintf('%19.8f\n',T)
end

