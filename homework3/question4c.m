f = @(x) 1 ./ (1 + x.^2);
x = linspace(-5, 5);
cheb_y = bc_cheb(x, f, 20);
plot(x, cheb_y)
hold on
y = f(x);
plot(x, abs(y - cheb_y))
