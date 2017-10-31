format compact

n = 100;
xtrue = rand(n, 1);
for i = 0: 4: 16
    condno = 10 .^ i;
    A = matgen(n, condno);
    b = A * xtrue;

    fprintf('condno %e\n', cond(A));

    % gaussian elimination
    x = A \ b;
    re = norm(x - xtrue) / norm(xtrue);
    rr = norm(b - A * x) / (norm(A) .* norm(x));
    fprintf('gaussian elimination: relative error %e, relative residual %e\n', re, rr);

    % inversion
    x = inv(A) * b;
    re = norm(x - xtrue) / norm(xtrue);
    rr = norm(b - A * x) / (norm(A) .* norm(x));
    fprintf('inversion: relative error %e, relative residual %e\n', re, rr);

    % cramer
    x = cramer(A, b);
    re = norm(x - xtrue) / norm(xtrue);
    rr = norm(b - A * x) / (norm(A) .* norm(x));
    fprintf("cramer's rule: relative error %e, relative residual %e\n", re, rr);
end
