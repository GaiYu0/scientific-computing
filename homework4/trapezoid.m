function i = trapezoid(f, from, to, n)
    x = linspace(from, to, n + 1);
    y = f(x);
    h = (to - from) / n;
    i = h / 2 * (y(1) + 2 * sum(y(2: n)) + y(n + 1));
end
