function x = without_pivoting(A, b)
    [rows, columns] = size(A);
    for i = 1: rows - 1
        for j = i + 1: rows
            c = A(j, i) / A(i, i);
            A(j, :) = A(j, :) - c * A(i, :);
            b(j) = b(j) - c * b(i);
        end
    end

    x = zeros(size(b));
    x(rows) = b(rows) / A(rows, rows);
    for i = rows - 1: -1: 1
        x(i) = (b(i) - A(i, i + 1: columns) * x(i + 1: columns)) / A(i, i);
    end
end
