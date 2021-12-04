% Andrew Rodrigue
% CSC 2262 
% Lab 11b

alpha = 44 * pi / 180;
beta = 69 * pi / 180;
gamma = 48 * pi / 180;
delta = 76 * pi / 180;

W = 330;
G = 410;
H = 260;

a = [   1           0           cos(alpha)  0           0           0           0           1           0           0
        0           0           sin(alpha)  0           0           0           0           0           1           0
        -1          1           0           -cos(beta)  cos(gamma)  0           0           0           0           0
        0           0           0           sin(beta)   sin(gamma)  0           0           0           0           0
        0           -1          0           0           0           -cos(delta) 0           0           0           0
        0           0           0           0           0           sin(delta)  0           0           0           1
        0           0           -cos(alpha) cos(beta)   0           0           1           0           0           0
        0           0           -sin(alpha) -sin(beta)  0           0           0           0           0           0
        0           0           0           0           -cos(gamma) cos(delta)  -1          0           0           0
        0           0           0           0           -sin(gamma) -sin(delta) 0           0           0           0];

b = [   0
        0
        0
        W
        0
        0
        0
        G
        H
        0];

forces = a \ b;
forces