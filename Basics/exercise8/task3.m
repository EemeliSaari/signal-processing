%% Task 3

% Testing Matlab z-transform and plotting pole-zero

%% Plotting

b = [0.0122 0.0226 0.0298 0.0204 0.0099];
a = [1 -0.9170 0.0540 -0.2410 0.1990];

zplane(b, a)

%% Calculating the impulse response

figure;
impz(b, a)
figure;
impz(a, b)
