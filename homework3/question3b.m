load mnist_all.mat
T = zeros(10, 28 * 28);
for i = 1: 10
  T(i, :) = mean(eval(...
    strcat('train', string(i - 1))));
end

[n_digits, dim] = size(test0);
n_errors = 0;
for i = 1: n_digits
  min_dist = Inf;
  min_class = 0;
  d = double(test0(i, :));
  for j = 1: 10
    dist = norm(T(j, :) - d);
    if dist < min_dist
      min_dist = dist;
      min_class = j - 1;
    end
  end
  if min_class ~= 0
    n_errors = n_errors + 1;
  end
end
error_rate = n_errors / n_digit
