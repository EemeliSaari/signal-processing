%% Task5

% Reverse engineering the phone push-buttons with dialing tone

%% Loading the data

load('number.mat');

%% Visualizing

specgram(secret)

%% Sound

soundsc(secret)

%% Solving the problem

% 1. Opening the spectogram

% 2. The sound makes two horizontal lines in the time axis

% 3. The Sequence: 3-6-2-3-8-4-0'

% 4. Recreating the signal

a = [0.1702 0.1880 0.1702 0.1702 0.2080 0.2080 0.2297];
b = [0.3606 0.3606 0.3262 0.3606 0.3262 0.2952 0.3262];

f = 0:0.001:length(a);
t = 0:0.001:1;

for i=1 : length(a)
    f((i-1):0.001:i) = sin(a(i)*pi*t) + sin(b(i)*pi*t);
end

%% Visualising results

specgram(f)