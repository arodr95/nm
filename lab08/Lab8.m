% Andrew Rodrigue
% CSC 2262
% Lab 8

h = 2500;
g = 9.81;
guess = 40 * pi / 180;

for v0 = 100:50:400
    f = @(theta) (2 * g * h * sin(2 * theta) / v0) - (v0 * sin(4 * theta) / 2) - (cos(2 * theta)* sqrt(v0 ^ 2 * sin(2 * theta) ^ 2 + 8 * g * h * cos(theta) ^ 2));
    theta = fzero(f, guess);
    x = v0 * cos(theta) * ((v0 * sin(theta) / g) + (sqrt(v0 ^ 2 * sin(theta) ^ 2 / g ^ 2 + 2 * h / g)));
    yMax = h + v0 ^ 2 * sin(theta) ^ 2 / (2 * g);
    fprintf("v0=%d\ttheta=%.5f\tx=%.5f\tymax=%.5f\n", v0, theta * 180 / pi, x, yMax);
end