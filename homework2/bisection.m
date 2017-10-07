function [left, right] = bisection(f, left, right, tolerance)
    n_iterations = 0;
    while right - left > tolerance
        m = (left + right) / 2;
        if f(left) * f(m) <= 0
            right = m;
        elseif f(m) * f(right) <= 0
            left = m;
        else
            break
        end
        n_iterations = n_iterations + 1;
        fprintf('%d\t%.8f %.8f\n', n_iterations, left, right)
    end
end
