x = [-5:.001:5];
f_x = exp(-x.^2);
subplot(2,2,1)
plot(x,f_x)
xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
title('Funkcja \it{f(x) = e^{-x^2}}','FontSize', 16)
subplot(2,2,2)
for h = 0.5:0.5:2
f_x2 = (exp(-(x+h).^2) - exp(-(x-h).^2))./2.*h
plot(x, f_x2)
hold on
end
xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
title('Pochodna a)','FontSize', 16)
hold off
subplot(2,2,3)
f_x3 = diff(f_x)./(diff(x-0.0005))
f_x3(10001) = 0
plot(x, f_x3)
xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
title('Pochodna b)','FontSize', 16)
figure
subplot(1,2,1)
plot(x,f_x)
xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
title('Funkcja \it{f(x) = e^{-x^2}}','FontSize', 16)
subplot(1,2,2)
f_x2 = (exp(-(x+0.01).^2) - exp(-(x-0.01).^2))./(2.*0.01)
plot(x, f_x2,"-o")
hold on
plot(x, f_x3,"-o")
f_x4 = -2.*x.*f_x
plot(x,f_x4,"-o")
xlabel('\it{x}','FontSize', 14)
ylabel('\it{y}','FontSize', 14)
title('Pochodne na 3 różne sposoby','FontSize', 16)
legend('Pochodna z punktu a)','Pochodna z punktu b)','Pochodna analitycznie')



