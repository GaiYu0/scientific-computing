function [y1, y2] = heun(f1, f2, t0, y10, y20, h, n)
    y1 = y10;
    y2 = y20;
    t = t0;
    while n > 0
        [y11, y21] = euler2(f1, f2, t, y1, y2, h, 1);
        t1 = t + h;
        y1_bar = y1 + h / 2 * (f1(t, y1, y2) + f1(t1, y11, y21));
        y2_bar = y2 + h / 2 * (f2(t, y1, y2) + f2(t1, y11, y21));
        y1 = y1_bar;
        y2 = y2_bar;
        t = t1;
        n = n - 1;
    end
end
