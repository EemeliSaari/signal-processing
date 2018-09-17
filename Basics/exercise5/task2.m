% Task 2

% Handling basic audio signal with Matlab

u = -7:1:14 >= 0;

ws = length(u); 
b = (1/ws) * ones(1, ws);
a = 1.1;
stem(filter(a * ones(1, windowSize), 1, u))
