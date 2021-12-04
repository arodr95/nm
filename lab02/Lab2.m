% Andrew Rodrigue
% CSC 2262
% Lab 2
d = 2235;
h = 1125;
v0 = 315;
x = 760;
g = 9.81;

t = sqrt(2 * (v0 ^ 2 - h * g)+ 2 * sqrt((v0 ^ 2 - h * g) ^ 2 - (h ^ 2 + (d + x) ^ 2) * g ^ 2)) / g;
theta = acos((d + x) / (v0 * t));
v = sqrt(v0 ^ 2 + g ^ 2 * t ^ 2 - 2 * g * t * v0 * sin(theta));
ymax = (v0 ^ 2 * sin(theta) ^ 2) / (2 * g);
y = d * tan(theta) - (g * d ^ 2) / (2 * v0 ^ 2 * cos(theta) ^ 2);

fprintf("t=%.5f theta=%.5f v=%.5f ymax=%.5f y=%.5f\n", t, theta * 180 / pi, v, ymax, y);