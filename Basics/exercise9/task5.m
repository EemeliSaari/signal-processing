% Task 5

% Design high-pass filter satisfying the following requirements:

%   Passband = [18 kHz, 22.05 kHz]
%   Stopband = [0 kHz, 15 kHz
%   Passband ripple = 0.1 dB
%   Minimum stopband attenuation = 30 dB
%   Sampling frequency = 44.1 kHz

%%

Fs = 44.1e3;

fp = 22.05e3/Fs;
fs = 18.0e3/Fs;

low = 15.0e3/Fs;
bnd = [fs fp];

fc = [low bnd];

type = 'high';

% We'll select Hamming window
N = ceil(3.1/(fp - fs));
window = hamming(N);

%%

d = fir1(N-1, fc, type, window);