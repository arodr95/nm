% Andrew Rodrigue
% CSC 2262
% Lab 3
year = input("Enter a year: ");
[month, day] = DateOfEaster(year);
fprintf("In %d, Easter falls on %d/%d\n", year, month, day);

function [month, day] = DateOfEaster (year)
    y = year;
    a = rem(y, 19);
    b = fix(y / 100);
    c = rem(y, 100);
    d = fix(b / 4);
    e = rem(b, 4);
    g = fix((8 * b + 13) / 25);
    h = rem(19 * a + b - d - g + 15, 30);
    j = fix(c / 4);
    k = rem(c, 4);
    m = fix((a + 11 * h) / 319);
    r = rem(2 * e + 2 * j - k - h + m + 32, 7);
    n = fix((h - m + r + 90) / 25);
    p = rem(h - m + r + n + 19, 32);
    month = n;
    day = p;
end
