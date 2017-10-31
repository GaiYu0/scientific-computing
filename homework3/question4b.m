f = @(x) 1 ./ (1 + x.^2);
x = zeros(1, 13);
for i = 0: 12
    x(i + 1) = 5 * cos(pi * i / 12);
end
y = f(x);
p = polyfit(x, y, 12);
x = linspace(-5, 5);
y = f(x);
plot(x, y)
hold on
y = polyval(p, x);
plot(x, y)
