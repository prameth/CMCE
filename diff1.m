xa = 0:0.1:1;
ya = exp(-1.*xa);
h = 0.1;
y(1) = 1;
n = 12;
for i=1:n
    y(i+1) = y(i) + h*(-y(i));
    x(i+1) = i*h;
end
figure
plot(xa,ya,x,y,'r')