function power = lhs_matrix(f, degree, x)
    x = x';
    s = size(x);
    power = zeros(s(1), degree + 1);
    power(1: s(1), 1: 1) = 1;
    for i = 2: degree + 1
        power(1: s(1), i: i) = power(1: s(1), (i - 1): (i - 1)) .* x;
    end
end
