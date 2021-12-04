% Andrew Rodrigue
% CSC 2262
% Lab 1
a = 8;
b = 22;
gamma = 41 * pi / 180;
c = sqrt(a ^ 2 + b ^ 2 - 2 * a * b * cos(gamma));
beta = acos((a ^ 2 + c ^ 2 - b ^ 2) / (2 * a * c));
alpha = pi - beta - gamma;
c
alpha = alpha * 180 / pi
beta = beta * 180 / pi