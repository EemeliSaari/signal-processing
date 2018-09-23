% Task 5

% Fourier transforms with Matlab

%% Generate a one second long signal having frequency 1000 Hz with sampling rate 8192 Hz

fs = 8192;
L = 1000;
T = 1/fs;
t = (0:L-1)*T;

sgn = sin(2*pi*L*t);

%% Calculate the DFT of the signal

Y = fft(sgn);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%% Plot the results

f = fs*(0:(L/2))/L;
plot(f,P1)