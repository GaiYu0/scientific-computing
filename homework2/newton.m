function x = newton(f, df, x, tolerance)
    n_iterations = 0;
    fx = f(x);
    while abs(fx) > tolerance
        x = x - fx / df(x);
        n_iterations = n_iterations + 1;
        fx = f(x);
        fprintf('%d\t%.12f %.12f\n', n_iterations, x, fx)
    end
end
