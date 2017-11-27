function y = heun(f, t0, y0, h, n)
    y = y0;
    t = t0;
    while n > 0
        y_bar = euler(f, t, y, h, 1);
        t_bar = t + h;
        y = y + h / 2 * (f(t, y) + f(t_bar, y_bar));
        t = t_bar;
        n = n - 1;
    end
end
