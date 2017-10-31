function y = bc_cheb(x, f, n)
    cheb_x = zeros(n + 1, 1);
    w = zeros(n + 1, 1);
    for i = 0: n
        cheb_x(i + 1) = 5 * cos(i / n * pi);
        if i == 0 || i == n
            w(i + 1) = (-1)^i / 2;
        else
            w(i + 1) = (-1)^i;
        end
    end
    cheb_y = f(cheb_x);
    y = sum(w .* cheb_y ./ (x - cheb_x), 1) ./ sum(w ./ (x - cheb_x), 1);
end
