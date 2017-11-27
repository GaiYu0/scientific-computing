function [y1, y2] = midpoint(f1, f2, t0, y10, y20, h, n)
    y1 = y10;
    y2 = y20;
    t = t0;
    while n > 0
        [y112, y212] = euler2(f1, f2, t, y1, y2, h / 2, 1);
        t12 = t + h / 2;
        y1_bar = y1 + h * f1(t12, y112, y212);
        y2_bar = y2 + h * f2(t12, y112, y212);
        y1 = y1_bar;
        y2 = y2_bar;
        t = t + h;
        n = n - 1;
    end
end
