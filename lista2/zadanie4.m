A = [6 0]
ar = 6;
ax = 6;
ay = 0;
br = 12;
bx = cos(deg2rad(60)) * br;
by = sin(deg2rad(60)) * br;
B = [bx by]
cr = 9;
cx = cos(deg2rad(60)) * cr;
cy = -sin(deg2rad(60)) * cr;
C = [cx cy]

D = A+B;
disp("A+B: " + "[" + D(1) + "," + D(2) + "]")
dx = D(1);
dy = D(2);

subplot(3,2,1)
quiver(0,0,ax,ay,1)
hold on
quiver(0,0,bx,by,1)
quiver(0,0,dx,dy,1)
axis equal
hold off

D = A-B;
disp("A-B: " + "[" + D(1) + "," + D(2) + "]")
dx = D(1);
dy = D(2);

subplot(3,2,2)
quiver(0,0,ax,ay,1)
hold on
quiver(0,0,-bx,-by,1)
quiver(0,0,dx,dy,1)
axis equal
hold off

D = B-A;
disp("B-A: " + "[" + D(1) + "," + D(2) + "]")
dx = D(1);
dy = D(2);

subplot(3,2,3)
quiver(0,0,-ax,-ay,1)
hold on
quiver(0,0,bx,by,1)
quiver(0,0,dx,dy,1)
axis equal
hold off

D = A+B+C;
disp("A+B+C: " + "[" + D(1) + "," + D(2) + "]")
dx = D(1);
dy = D(2);

subplot(3,2,4)
quiver(0,0,ax,ay,1)
hold on
quiver(0,0,bx,by,1)
quiver(0,0,cx,cy,1)
quiver(0,0,dx,dy,1)
axis equal
hold off

D = A+B-C;
disp("A+B-C: " + "[" + D(1) + "," + D(2) + "]")
dx = D(1);
dy = D(2);

subplot(3,2,5)
quiver(0,0,ax,ay,1)
hold on
quiver(0,0,bx,by,1)
quiver(0,0,-cx,-cy,1)
quiver(0,0,dx,dy,1)
axis equal
hold off