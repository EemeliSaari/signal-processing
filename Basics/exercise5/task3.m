% Task 3

% Filtering signal delta(n)

%% Setting up

delta = [1, zeros(1, 127)];
ws = length(delta);

%% a) y(n) = -0.9y(n - 1) + x(n)

stem(filter(1, [1 -0.9], delta))

%% b) y(n) = 0.6y(n ? 1) ? 0.3y(n ? 2) + 0.2x(n) ? 0.5x(n ? 1) + 0.8x(n ? 2)

stem(filter([0.2 -0.5 0.8], [1 -0.6 0.3], delta))

%% c) y(n) = x(n) + 0.5x(n - 1) + 0.25x(n - 2) + 0.5y(n - 1) + 0.6y(n - 2)

stem(filter([1 -0.5 -0.6], [1 0.5 0.25], delta))
