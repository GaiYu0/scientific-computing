function y = polynomial(poly, x)
    s_poly = size(poly);
    power = ones(size(x));
    y = 0;
    for i = 1: s_poly(1)
        y = y + poly(i) .* power;
        power = power .* x;
    end
end
