% Andrew Rodrigue
% CSC 2262
% Lab 6

[ID, hours, rate] = textread("Lab6.dat");

wages = hours .* rate;
bonus = .15 * wages;
grossPay = wages + bonus;
withholdingTax = .12 * grossPay;
netPay = grossPay - withholdingTax;

ID
wages
bonus
netPay

[wAVG, wSD, wRMS, wH] = Stats(wages);
[bAVG, bSD, bRMS, bH] = Stats(bonus);
[npAVG, npSD, npRMS, npH] = Stats(netPay);

fprintf("Wages:  Average=%.2f  Standard Deviation=%.2f  RMS=%.2f  Harmonic Mean=%.2f\n", wAVG, wSD, wRMS, wH);
fprintf("Bonus:  Average=%.2f  Standard Deviation=%.2f  RMS=%.2f  Harmonic Mean=%.2f\n", bAVG, bSD, bRMS, bH);
fprintf("NetPay:  Average=%.2f  Standard Deviation=%.2f  RMS=%.2f  Harmonic Mean=%.2f\n", npAVG, npSD, npRMS, npH);

function [avg, sd, rms, h] = Stats(a)
    n = length(a);
    avg = sum(a) / n;
    sd = sqrt((n * sum(a .^ 2) - sum(a) ^ 2) / (n * (n - 1)));
    rms = sqrt(sum(a .^ 2) / n);
    h = n / sum(1 ./ a);
end