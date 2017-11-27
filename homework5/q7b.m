t = 400;
h = 1;
tspan = 0: h: t;
epsilon = 0.01;
x0 = 2;
a0 = 2 / 3;
n_iterations = 10;

X = zeros(size(tspan));
A = zeros(size(tspan));
x = x0;
a = a0;
k = 1;
for t = tspan
    x_next = x + h * (-x.^3 / 3 + x + a);
    a_next = a + h * (-epsilon * x);
    x_a = [x_next; a_next];

    n = 0;
    while n < n_iterations
        q = [h / 3 * x_next.^3 + (1 - h) * x_next - h * a_next - x;
            epsilon * h * x_next + a_next - a];

        J = [h * x_next.^2 + 1 - h, -h; epsilon * h, 1];

        x_a = x_a - J \ q;
        x_next = x_a(1);
        a_next = x_a(2);
        n = n + 1;
    end

    x = x_next;
    a = a_next;
    X(k) = x;
    A(k) = a;
    k = k + 1;
end

plot(tspan, X);
hold on;
plot(tspan, A);
legend('x(t)', 'alpha(t)');
legend BOXOFF;
