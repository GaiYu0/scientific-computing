x0 = 2;
alpha0 = 2 / 3;
step = 0.5;
t = 400;

tspan = 0: step: t;
x_alpha = ode1(@ode, tspan, [x0, alpha0]);
x = x_alpha(:, 1);
alpha = x_alpha(:, 2);

plot(tspan, x);
hold on;
plot(tspan, alpha);
xlabel('t');
legend('x(t)', 'alpha(t)');
legend BOXOFF;

function [dx_dalpha] = ode(t, x_alpha)
    epsilon = 0.01;

    x = x_alpha(1);
    alpha = x_alpha(2);
    dxdt = -x.^3 ./ 3 + x + alpha;
    epsilon;
    dalphadt = -epsilon .* x;
    dx_dalpha = [dxdt; dalphadt];
end
