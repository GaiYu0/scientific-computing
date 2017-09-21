function x = solve(f, df, x, k)
    for i = 1: k
        x = x - f(x) / df(x)
    end
end
