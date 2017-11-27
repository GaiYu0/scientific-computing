function y = midpoint(f, t0, y0, h, n)
    y = y0;
    t = t0;
    while n > 0
        y12 = euler(f, t, y, h / 2, 1);
        t12 = t + h / 2;
        y = y + h * f(t12, y12);
        t = t + h;
        n = n - 1;
    end
end
