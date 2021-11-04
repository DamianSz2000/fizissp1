r1 = 2
kat1 = 45
x1 = cos(deg2rad(kat1))*r1
y1 = tan(deg2rad(kat1))*x1

r2 = 4
kat2 = 127
x2 = cos(deg2rad(kat2))*r2
y2 = tan(deg2rad(kat2))*x2

wektor = [x1+x2 y1+y2]
subplot(2,1,1)
quiver(0,0,x1,y1,1)
text(x1/2,x1/2,"d1")
hold on
quiver(x1,y1,x2,y2,1)
text(x1+x2/2,y1+y2/2,"d2")
quiver(0,0,wektor(1),wektor(2),1)
text(wektor(1)/2,wektor(2)/2,"suma")
hold off
axis equal
subplot(2,1,2)
quiver(0,0,x1,0,1)
hold on
quiver(0,0,0,y1,1)
quiver(x1,0,x2,0,1)
quiver(0,y1,0,y2,1)
quiver(0,0,x1+x2,y1+y2,1)
xlabel("x[m]")
ylabel("y[m]")
hold off
axis equal