kat = deg2rad(30)
t = 0:0.001:1.0194
t1 = 0:0.1:1.0194
v0 = 10
vx = v0.*cos(kat)
vx1 = v0.*cos(kat).*ones(size(t1))
vy = v0.*sin(kat)
vy1 = v0.*sin(kat) - 9.81.*t.^2
x = vx.*t
y = (vy.*t) - ((9.81/2).*t.^2)
x1 = vx1.*t1
y1 = v0.*sin(kat) - 9.81.*t1.^2
zasieg = (2.*(v0.^2).*sin(kat).*cos(kat))./9.81
czaslotu = (2.*v0.*sin(kat))./9.81
plot(x,y)
hold on
quiver(0,0,vx/10,vy/10)
quiver(0,0,vx/10,0)
quiver(0,0,0,vy/10)

quiver(x1(1:100:end),y1(1:100:end),vx1/10,vy1/10)
quiver(0,0,vx/10,0)
quiver(0,0,0,vy/10)



xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
axis equal
