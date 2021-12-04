% CSC 2262 
% Andrew Rodrigue
% Lab 10a

a = 4;
b = 8;
f = @(x) (sqrt(2 * x .^ 4 + 3 * x) .* cos(5 * x) .* log((4 * x .^ 3 + 7 * x) ./ (x .^2 + 1))) ...
    ./ (x .^ 2 .* sin((3 * x + 1) ./ (2 * x)) .* exp((-1 * (5 * x .^ 3 + 2 * x)) ./ (6 * x .^ 2 + 2)));

I = integral(f, a, b);

fprintf("I=%.5f\n", I);