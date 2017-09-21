x = 1;
k = 10;
f = @(x) x^2 - 2;
df = @(x) 2 * x;
format compact
format long
solve(f, df, x, k)
