% Task 2

% Design Butterworth type IIR low-pass filter

%% Presenting 0Hz-0.4kHz and removes 0.7kHz-20kHz with sampling rate 40kHz.

Fs = 40e3;

Wp = 4000/Fs;
Ws = 7000/Fs;

%% Miminum stopband attenuation 45 bB and minimum passband ripple 0.3 dB

Rs = 45;
Rp = 0.3;

%% Use the buttord function to get parameteres

[N, Wn] = buttord(2*Wp, 2*Ws, Rp, Rs);

%% Get the filter using the parameters

[a, b] = butter(N, Wn);

%% Plot the impulse response

impz(a, b)

%% Plot the amplitude response

freqz(a, b)

%% Plot the pole-zero plot

zplane(a,b)
