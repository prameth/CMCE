tc = 405.5;
pc = 111.3;
R = 0.08206;
a = 0.42748*(R^2)*(tc^2.5)/pc;
b = 0.08664*R*tc/pc;
P = 56;
T = 450;
a1 = P*(T^0.5);
a2 = -R*(T^1.5);
a3 = a - (b*R*(T^1.5)) - (P*(T^0.5)*(b^2));
a4 = -a*b;
cube = [a1 a2 a3 a4];
result = roots(cube);
for i = 1:3
    if isreal(result(i,1))==1
        volume = result(i,1)
    end
end
c_factor = P*volume/(R*T)