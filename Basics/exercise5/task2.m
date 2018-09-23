% Task 2

% Filtering signal u(n)

u = -7:1:14 >= 0;

%% Using system y(n) = 1.1y(n?1) +x(n)

b = 1;
a = [1 -1.1];

stem(filter(b, a, u))
