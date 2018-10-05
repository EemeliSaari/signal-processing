% Task 5

% Test design_lowpass filter design from Tasks 3-4.

% Low-pass filter with
% Requirements:
% -------------
%   Passband = 0kHz - 9kHz
%   Stopband = 12.5kHz - 16kHz
%   Passband ripple = 0.4 dB
%   Minimum stopband attenuation = 25 dB
%   Sampling frequency = 32kHz

Fs = 32e3;

fp = 9e3;
fs = 12.5e3;
Rp = 0.4;
Rs = 25;

%% Use the function to get the parameters b and a.

[N, D] = design_lowpass(fp, fs, Rp, Rs, Fs);

%% Assert that the there are 6 coefficients

length(D)

%% Plot the amplitude response.

freqz(D, N)

%% Plot the pole-zero

zplane(N, D)