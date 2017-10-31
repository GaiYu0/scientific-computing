hill = [
    0 0 0 1 0 0 0;
    0 0 0 2 0 0 0;
    0 0 2 4 2 0 0;
    1 2 4 8 4 2 2;
    0 0 2 4 2 0 0;
    0 0 0 2 0 0 0;
    0 0 0 1 0 0 0;
];
M0 = zeros(7, 61);
x = linspace(0, 6, 61);
for r = 1: 7
    M0(r, :) = spline(0: 6, hill(r, :), x);
end
