function [x0, x1] = secant(f, x0, x1, tolerance)
    n_iterations = 0;
    f_x0 = f(x0);
    while abs(f_x0) > tolerance
        next = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
        x0 = x1;
        x1 = next;
        n_iterations = n_iterations + 1;
        f_x0 = f(x0);
        fprintf('%d\t%.12f %.12f %.12f\n', n_iterations, x0, x1, f_x0)
    end
end
