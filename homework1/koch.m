% Name: koch.m
% Author: Tim Chartier
%
% Plot stages 0 through n of Koch's Snowflake
%
% For more information on Koch's Snowflake, see:
%  http://mathworld.wolfram.com/KochSnowflake.html
%

x = [-1/2 0 1/2 -1/2]; y = [0 1 0 0];
n = 4;

% --------------------------------------------------
% START
% --------------------------------------------------
axis([-0.75 0.75 -sqrt(3)/6 1]);
axis equal
plot(x, y)
hold on
pause(0.5)
% --------------------------------------------------
% END
% --------------------------------------------------

for i = 1:n,
    k = length(x);
    v = zeros(4*k-3);
    w = zeros(4*k-3);

    for j = 1:k-1,
        v(4*j - 3) = x(j);
        w(4*j - 3) = y(j);
        dirx = x(j+1) - x(j);
        diry = y(j+1) - y(j);
        v(4*j - 2) = x(j) + 1/3*dirx;
        w(4*j - 2) = y(j) + 1/3*diry;
        orthox = -diry;
        orthoy = dirx;
        v(4*j - 1) = x(j) + 1/2*dirx + 1/3*1/2*sqrt(3)*orthox;
        w(4*j - 1) = y(j) + 1/2*diry + 1/3*1/2*sqrt(3)*orthoy;
        v(4*j) = x(j) + 2/3*dirx;
        w(4*j) = y(j) + 2/3*diry;
    end

    v(4*k-3) = x(k);
    w(4*k-3) = y(k);
    x = v; y = w;

    % --------------------------------------------------
    % START
    % --------------------------------------------------
    plot(x, y)
    hold on
    pause(0.5)
    % --------------------------------------------------
    % END
    % --------------------------------------------------
end
