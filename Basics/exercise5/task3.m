% Task 3

% Filtering signal

%% Setting up

delta = [1, zeros(1, 127)];
ws = length(delta);

%% a) y(n) = ?0.9y(n ? 1) + x(n)

y1 = filter(-0.9, -1, delta);
stem(y1)

%% b) y(n) = 0.6y(n ? 1) ? 0.3y(n ? 2) + 0.2x(n) ? 0.5x(n ? 1) + 0.8x(n ? 2)

y2 = filter([0.6 -0.3], [0.2 -0.5 0.8], delta);
stem(y2)

%% c) y(n) = x(n) + 0.5x(n ? 1) + 0.25x(n ? 2) + 0.5y(n ? 1) + 0.6y(n ? 2)

y3 = filter([0.5 0.5], [0.5 0.25], delta);
stem(y3)
