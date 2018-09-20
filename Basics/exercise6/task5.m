% Task 5

% Calculate impulse response with Matlab

%% Loading the data

load('corrupt.mat');
load('handel')

%% Solve h(n) from z(n) = h(n)y(n)

Z = fft(z);
Y = fft(y);

H = Z./Y;

h = ifft(H);

%% Plot the resulting impulse response h(n)

plot(h(1:10))