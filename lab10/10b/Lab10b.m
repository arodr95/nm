% CSC 2262 
% Andrew Rodrigue
% Lab 10b

p = @(x, y) ((y .^ 2 .* cos(x + y)) ./ (x + 2 * y + 1)) + (y .^ 3 .* exp((2 * x + 3 * y) ./ (x + y + 1)));

a = 2;
b = 4;
g = @(x) (x .^ 2 .* (x - 2) .^ 3) ./ (x .^ 2 + 3 * x + 4);
h = @(x) ((x + 1) .^ 2 + 3) ./ (1 + (x - 1) .* sin((pi / 4) * (x - 2)));

mass = integral2(p, a, b, g, h);

fprintf("mass=%.5f\n", mass);