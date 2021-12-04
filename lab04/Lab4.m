% Andrew Rodrigue
% CSC 2262
% Lab 4

x = (1:.001:5);

y1 = log(x .^ 3 + 4) .* (x + 1) .^ 2 .* sin(x * pi / 6) .* exp(-1 * x .^ 2 ./ (x + 3));
y2 = (12 * (x + 1) .^ 2 .* sin (x * pi / 6)) ./ ((x + 3) .* sqrt(x .^ 3 + 5));
y3 = (50 * cos(x) .^ 2) ./ (log(1 + 3 * x + sqrt(x + 4) + sqrt(x) .* sin(x)) + x .^ 2);
y4 = (1 + (x - 2) .* cos((x - 5) * pi / 4)) ./ exp(-1 * (x + 2) ./ (x + 4));

plot(x, y1, 'g', x, y2, 'r', x, y3, 'k', x, y4, 'b');
axis([1 5 -1 13]);
set(gca, 'xtick', 1:5);
set(gca, 'ytick', -1:13);
xlabel('x');
ylabel('y1(green), y2(red), y3(black), y4(blue)');
title('Lab 4');