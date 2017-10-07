function y = arctan(x, n)
    % n = 2 .* i + 1
    y = 0;
    power = x;
    for i = 0: (n - 1) ./ 2
        y = y + power ./ (2 .* i + 1);
        power = power .* (-x.^2);
    end
end
