f = @(x) 1 ./ (1 + x.^2);
x = [-5: 5 / 6: 5];
y = f(x);
p = polyfit(x, y, 12);
x = linspace(-5, 5);
y = f(x);
plot(x, y)
hold on
y = polyval(p, x);
plot(x, y)
