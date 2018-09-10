% Task 3

% Plot these signals so that the figures are similar to those shown in Lecture 4

%% a)

n = -7:1:7;

stem(n', n==0) % delta(n) = 1 -> n == 0, 0 -> n != 0

%% b)

u = n >= 0;

stem(n', u)

%% c)

i = find(u, 1, 'first');

r = u;
r = double(r); % Convert from logical to double
r(i:length(n)) = n(i:length(n));

stem(n, r)