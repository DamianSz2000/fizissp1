kat = deg2rad(30)
g = 9.81
t = 0:0.001:1.094
v0 = 10
v0x = v0 .* cos(kat)
v0y = v0 .* sin(kat)
vx = linspace(v0x, v0x, 1095)
vy = (v0 .* sin(kat)) - (g .* t)
vy2 = linspace(0,0,1095)
vx2 = linspace(0,0,1095)
x = v0x .* t
y = (v0y .* t) - (g ./ 2) .* t .^ 2
speed = sqrt(vx(1:200:1095) .^ 2 + vy(1:200:1095) .^ 2)
speed2 = strtrim(cellstr(num2str(speed'))')
speed3 = sqrt(vx(1:50:1095) .^ 2 + vy(1:50:1095) .^ 2)

subplot(3,1,1)
plot(x,y)
hold on
quiver(x(1:200:1095), y(1:200:1095), (vx(1:200:1095))./10, (vy(1:200:1095))./10, 0)
quiver(x(1:200:1095), y(1:200:1095), (vx(1:200:1095))./10, vy2(1:200:1095)./10, 0)
quiver(x(1:200:1095), y(1:200:1095), (vx2(1:200:1095))./10, vy(1:200:1095)./10, 0)
xlabel('\it{x[m]}','FontSize', 14)
ylabel('\it{y[m]}','FontSize', 14)
axis equal
hold off
subplot(3,1,2)
plot(x,y)
hold on
quiver(x(1:200:1095), y(1:200:1095), (vx(1:200:1095))./10, (vy(1:200:1095))./10, 0)
text(x(1:200:1095), y(1:200:1095), speed(1:6) + "m/s" )
xlabel('\it{x[m]}','FontSize', 14)
ylabel('\it{y[m]}','FontSize', 14)
axis equal
hold off
subplot(3,1,3)
plot(t(1:50:1095),speed3)
xlim(0:1.094)
dx = linspace(v0x, v0x, 1095)
dy = v0y - g.*t

hold on
speed4 = sqrt(dx .^ 2 + dy .^ 2)
plot(t,speed4)
legend('sqrt(vx^2 + vy^2)','sqrt(dx/dt^2 + dy/dt^2)')

