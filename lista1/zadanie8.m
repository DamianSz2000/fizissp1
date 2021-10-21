fi = [0; pi/4; pi/2; (3*pi)/4; pi; (5*pi)/4]
r = 2
r2 = 3
r3 = 4

x = r.*cos(fi)
y = r.*sin(fi)

r1 = sqrt(x.^2+y.^2)

fi2 = [0:pi/32:2*pi]

x = r.*cos(fi2)
y = r.*sin(fi2)
x2 = r2.*cos(fi2)
y2 = r2.*sin(fi2)
x3 = r3.*cos(fi2)
y3 = r3.*sin(fi2)

hold on
plot(x,y)
plot(x2,y2)
plot(x3,y3)
axis equal
hold off
