t = [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
x = [0.0 3.1 5.9 9.2 12.0 14.9 18.0 20.8 24.2 26.8 30.0];
terr = linspace(0.02,0.02,11);
xerr = linspace(0.2,0.2,11);

x1 = [0:0.1:1];
y = 30.*x1;

srt =  sum(t)/11;
srx = sum(x)/11;

tt = t-srt;
xx = x-srx;

ttxx = tt.*xx;
tttt = tt.*tt;

a = ttxx/tttt;
b = srx - (a*srt);

y2 = a.*t + b;


errorbar(t,x,xerr,xerr,terr,terr)
hold on
plot(x1,y)
plot(x1,y2)
legend('Wykres położenia od czasu','y = 30x + 0',"Prosta policzona za pomocą równania prostej regresji",'Location','northwest')
disp("Pierwsza pochodna to 30 a więc prędkość obiektu to 30mm/s")
disp("Otrzymane współczynniki prostej regresji to a="+a+", b="+b)