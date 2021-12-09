vx = 10
t = [0:10]
x = vx .* t
t2 = [0 0 0 0 0 0 0 0 0 0 0]
x2 = [10 10 10 10 10 10 10 10 10 10 10]
subplot(1,2,1)
plot(t,x)
hold on
quiver(t(1:11), x(1:11), t2, x2, 0)
xlabel("t[s]")
ylabel("x[m]")
text(t(1:11), x(1:11), "10 m/s")
legend({"x(t)", "vx(t)"},'Location','northwest')
subplot(1,2,2)
plot(t,x2)
xlabel("t[s]")
ylabel("vx[m/s]")