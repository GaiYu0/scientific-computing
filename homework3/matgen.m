function A = matgen(n, condno)
    U = rand(n, n);
    [Q, R] = qr(U);
    U = Q;
    V = rand(n, n);
    [Q, R] = qr(V);
    V = Q;
    S = zeros(n);
    for i = 1: n
        S(i, i) = condno .^ (-(i - 1) ./ (n - 1));
    end
    A = U * S * V;
end
