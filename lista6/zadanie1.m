v0 = 10
kat = 30
v0x = v0*cos(deg2rad(kat))
v0y = v0*sin(deg2rad(kat))
g = 9.81
ts = (2*v0y)/g
hmax = (v0y^2)/(2*g)
zasieg = (v0^2/g)*sin(deg2rad(2*kat))
t = [0:0.001:ts]
x = v0x .* t
y = (v0y .* t) - (g ./ 2) .* t .^ 2
vx = linspace(v0x, v0x, 1020)
vy = (v0 .* sin(deg2rad(kat))) - (g .* t)
for i = 42:42:1020
    plot(x(1:i), y(1:i))
    hold on
    quiver(x(i),y(i),vx(i)/10,vy(i)/10,0)
    quiver(x(i),y(i),vx(i)/10,0,0)
    quiver(x(i),y(i),0,vy(i)/10,0)
    xlim([0 zasieg])
    ylim([0 hmax])
    xlabel('\it{x[m]}','FontSize', 14)
    ylabel('\it{y[m]}','FontSize', 14)
    hold off
    pause(1)
end