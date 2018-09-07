% Task 4
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercise 9.1 on page 232.

syms P(t)
P(t) = 197273e3/(1+exp(-0.03134*(t-1913.25)));

fplot(P(t), [1790, 2000]); 
hold on

% Select the decades starting from the 1790
x = 1790:10:1950;

y = [3929 5308 7240 9638 12866 17069, 23192 31443 38558 50156 ...
    62948 75995 91972 105711, 122775 131669 150697];

% We scale the y correctly
y = y * 1000;

% Use the scatter plot - the same syntax as in every other language
scatter(x, y)

% Set the axes accordingly - otherwise Matlab will estimate the min, max
% based on the plotted values
axis([1750 2000 0 2e8])
