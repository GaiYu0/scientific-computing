M = zeros(61, 61);
x = linspace(0, 6, 61);
for c = 1: 61
    M(:, c) = spline(0: 6, M0(:, c), x);
end
