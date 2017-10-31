function i = simpson(f, from, to, n)
    x0 = linspace(from, to, n + 1);
    y0 = f(x0);
    x = (x0(1: n) + x0(2: n + 1)) / 2;
    y = f(x);
    h = (to - from) / n;
    i = h / 6 * (y0(1) + 2 * sum(y0(2: n)) + y0(n + 1) + 4 * sum(y));
end
