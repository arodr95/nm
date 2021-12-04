% CSC 2262 
% Andrew Rodrigue
% Sample 9

[xd, yd] = textread('Lab9.dat');
n = length(xd);
x = xd(1):.001:xd(n);

figure(1);
y1 = interp1(xd, yd, x, 'nearest');
plot(x, y1, 'k', xd, yd, 'ko');
axis([0 5 6 9.5]);
set(gca, 'xtick', 0.5:0.5:5);
set(gca, 'ytick', 6:0.5:9.5);
xlabel('x');
ylabel('nearest');
title('Lab 9, Figure 1');

figure(2);
y2 = interp1(xd, yd, x, 'linear');
plot(x, y2, 'r', xd, yd, 'ko');
axis([0 5 6 9.5]);
set(gca, 'xtick', 0.5:0.5:5);
set(gca, 'ytick', 6:0.5:9.5);
xlabel('x');
ylabel('linear');
title('Lab 9, Figure 2');

figure(3);
y3 = spline(xd, yd, x);
plot(x, y3, 'b', xd, yd, 'ko');
axis([0 5 6 9.5]);
set(gca, 'xtick', 0.5:0.5:5);
set(gca, 'ytick', 6:0.5:9.5);
xlabel('x');
ylabel('spline');
title('Lab 9, Figure 3');

figure(4);
plot(x, y1, 'k', x, y2, 'r', x, y3, 'b', xd, yd, 'ko');
axis([0 5 6 9.5]);
set(gca, 'xtick', 0.5:0.5:5);
set(gca, 'ytick', 6:0.5:9.5);
xlabel('x');
ylabel('nearest (black), linear (red), spline (blue)');
title('Lab 9, Figure 4');


