% Task 3

% Low-pass filter truncated between -20 <= n <= 20

%% Define the variables used in the task

fc = 0.3;
fs = 0.5;

%% Estimate the first oscillatory peak in the stopband

n = -20:fs:20;
freqz((sinc(n * fc)*2*fc))

% Answer: 0.18

%% Repeat with truncation -30 <= n <= 30.

n = -30:fs:30;
freqz((sinc(n * fc)*2*fc))

% Answer: Still the same - not as big

%% What about with even bigger truncation?

n = -300:fs:300;
freqz((sinc(n * fc)*2*fc))

% Answer: Remains the same
