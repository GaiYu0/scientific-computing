load mnist_all.mat
T = zeros(10, 28 * 28);
for i = 1: 10
    T(i, :) = mean(eval(strcat('train', string(i - 1))));
end

for i = 1: 10
    digit = reshape(T(i, :), 28, 28);
    subplot(2, 5, i)
    image(rot90(flipud(digit), -1)),
    colormap(gray(256)),
    axis square tight off;
end
