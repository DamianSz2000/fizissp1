v0 = 10
t = [0:0.01:3]
t2 = [0:0.25:3]
g = 9.81
y = (v0 .* t) - ((g./2) .* (t .^ 2))
vy = v0 - g .* t2
x = ones(size(vy)).*0
subplot(1,2,1)
plot(t,y)
hold on
quiver(t2, y(1:25:301), x, vy)
ylim([-3 6])
y = y(1:25:301)
vy2 = strtrim(cellstr(num2str(vy'))')
text(t2, y, vy2 + "m/s")
xlabel("t[s]")
ylabel("y[m]")
hold off
subplot(1,2,2)
plot(t2,vy)
xlabel("t[s]")
ylabel("vy[m/s]")


