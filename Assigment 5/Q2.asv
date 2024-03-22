%% Q2
% x0, x1, x2, x3,x4
x = [-1.4 -1 0.1 1.1 1.4];
y=tan(x);
syms c0 c1 c2 c3 c4;
eqn1 = c0+c1*x(1)+c2*x(1)^2+c3*x(1)^3+c4*x(1)^4 == y(1);
eqn2 = c0+c1*x(2)+c2*x(2)^2+c3*x(2)^3+c4*x(2)^4 == y(2);
eqn3 = c0+c1*x(3)+c2*x(3)^2+c3*x(3)^3+c4*x(3)^4 == y(3);
eqn4 = c0+c1*x(4)+c2*x(4)^2+c3*x(4)^3+c4*x(4)^4 == y(4);
eqn5 = c0+c1*x(5)+c2*x(5)^2+c3*x(5)^3+c4*x(5)^4 == y(5);
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5], [c0,c1,c2,c3,c4]);
X = linsolve(A,B);
fprintf("c0=%fl\n",X(1));
fprintf("c1=%fl\n",X(2));
fprintf("c2=%fl\n",X(3));
fprintf("c3=%fl\n",X(4));
fprintf("c4=%fl\n",X(5));