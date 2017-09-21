x = 1;
k = 10;
f = @(x) 1 / x - 3;
df = @(x) -1 / x^2;
format compact
format long
solve(f, df, x, k)
