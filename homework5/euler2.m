function [y1, y2] = euler2(f1, f2, t0, y10, y20, h, n)
    y1 = y10;
    y2 = y20;
    t = t0;
    while n > 0
        y1_bar = y1 + h * f1(t, y1, y2);
        y2_bar = y2 + h * f2(t, y1, y2);
        y1 = y1_bar;
        y2 = y2_bar;
        t = t + h;
        n = n - 1;
    end
end
