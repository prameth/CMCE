solinit = bvpinit(linspace(0,1,4), [1,0]);
sol = bvp4c(@func1, @func2, solinit)
x = linspace(0,1);
y = deval(sol,x);
%Analytically,
x1 = linspace(0,1,10);
T = 1-x1;
plot(x,y(1,:),'r',x1,T,'p')