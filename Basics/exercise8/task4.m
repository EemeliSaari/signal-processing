%% Task 4

% Create signal - filter it and listen to results

%% Creating the signal

N = 8192;
t = 0:1/N:4;
y = chirp(t, 0, 1, 1000);

%% Preview the signal

soundsc(y) % NOT WITH HEADPHONES!
specgram(y)

%% Filtering

a = [1 -1.143 0.4128]; 
b = [0.0675 0.1349 0.0675];

Y = filter(b, a, y);

soundsc(Y)
specgram(Y)