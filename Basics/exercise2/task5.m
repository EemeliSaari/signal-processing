% Task 5
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercise 9.3 on pages 233-234.

a = .17;
q = 4/pi;

syms r(theta)

r(theta) = a * q^theta;

t = 0:0.01:50;

% Use the polarplot to plot the theta values as a function of r(theta)
polarplot(t, r(t))
