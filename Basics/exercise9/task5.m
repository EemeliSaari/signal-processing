% Task 5

% Design high-pass filter satisfying the following requirements:

%   Passband = [18 kHz, 22.05 kHz]
%   Stopband = [0 kHz, 15 kHz
%   Passband ripple = 0.1 dB
%   Minimum stopband attenuation = 30 dB
%   Sampling frequency = 44.1 kHz

%% Define the variables according to the requirements

Fs = 44.1e3;

fp = 22.05e3/Fs;
fs = 18.0e3/Fs;

low = 15.0e3/Fs;
bnd = [fs fp];

fc = mean(bnd);

type = 'high';

% We'll select Hanning window since it
N = ceil(3.1/(fp - fs));

% Hanning window requires an odd number of coeficients so we'll check it.
if (mod(N, 2) == 0)
    N = N + 1;
end

window = hann(N);

%% Define the filter

d = fir1(N-1, 2*fc, type, window);

%% Display the Amplitude response

freqz(d)

%% Display the pole-zero plot

zplane(d)
