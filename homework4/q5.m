f = @(x) cos(x.^2);
for n = 50: 50: 200
    h = 1 / n;
    e_trape = abs(trapezoid(f, 0, 1, n) - quad(f, 0, 1, [1e-12, 1e-12]));
    e2 = e_trape / h^2;
    e_simp = abs(simpson(f, 0, 1, n) - quad(f, 0, 1, [1e-12, 1e-12]));
    e4 = e_simp / h^4;
    fprintf("h = %f; (Trapezoid Rule) E_h = %ef E_h / h^2 = %ef\n", h, e_trape, e2);
    fprintf("h = %f; (Simpson's Rule) E_h = %ef E_h / h^4 = %ef\n", h, e_simp, e4);
end
