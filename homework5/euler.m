function y = euler(f, t0, y0, h, n)
    t = t0;
    y = y0;
    while n > 0
        y = y + h * f(t, y);
        t = t + h;
        n = n - 1;
    end
end
