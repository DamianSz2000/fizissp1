A = [5 -3]
B = [-2 1]
disp("a)")
C = A + B
disp("Wektor ostatecznego przemiesieszczenia to: " + "[" + C(1) + "," + C(2) + "]")
length = sqrt(C(1)^2 + C(2)^2);
disp("Dlugosc wektora to: " + length)

quiver(0,0,C(1),C(2),1)
xlim([-5 5])
ylim([-5 5])