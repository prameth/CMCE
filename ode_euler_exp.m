% Euler Method Solution
h = 0.1;
e(1) = 1;
for i=1:30
    e(i+1) = e(i) + h*(-e(i));
    x(i+1) = i*h;
end
% Exponential Solution
xa = 0:0.1:3;
ya = exp(-1.*xa);
% ODE23 Solution
[t,y] = ode23('func',[0 3],1);
figure
plot(xa,ya,t,y,x,e,'r');