function x = cramer(A, b)
    [n, dim] = size(b);
    M = zeros(n);
    M(:, :) = A;
    x = zeros(n, 1);
    for i = 1: n
        M(:, i) = b;
        x(i) = det(M) ./ det(A);
        M(:, i) = A(:, i);
    end
end
