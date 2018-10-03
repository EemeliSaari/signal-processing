% Task 4

% Design the filter using the Parks-McClellan algorithm.

%% Using exercise 8 task 5 signal

load('number.mat');

specgram(secret)

%% Assign variables according to the task

a = 0.0;
b = 0.33;
c = 0.36;
d = 1.0;

N = 98;

%% Define the Parks-McClellan filter

f = firpm(N, [a, b, c, d], [0, 0, 1, 1]);

%% Plot the Amplitude response

freqz(f)

%% Filter the signal

y = conv(secret, f); % Here I used the convolution instead of filter

%% Listen to the sound

soundsc(y)

%% Plot the resulted specgram

specgram(y)
