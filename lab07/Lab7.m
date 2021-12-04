% Andrew Rodrigue
% CSC 2262
% Lab 7

T = 270;
R = 0.082;
a = -1.06;
b = 0.057;
c = -0.001;

guess = 10;
accuracy = 1e-7;

for P = 2:2:12
    f = @(V) -1 * P * V ^ 4 + R * T * V ^ 3 + a * V ^ 2 + b * V + c;
    fp = @(V) -4 * P * V ^ 3 + 3 * R * T * V ^ 2 + 2 * a * V + b; 
    V = Newton(f, fp, guess, accuracy);
    fprintf("P = %d,\tV = %.5f\n", P, V);
end

function V = Newton(f, fp, guess, accuracy)
    new = guess;
    err = accuracy;
    while (err >= accuracy)        
        old = new;
        new = old - f(old) / fp(old);
        err = abs(new - old);
    end
    V = new;
end
