% Task 4

% Design the filter using the Parks-McClellan algorithm.

%% Using exercise 8 task 5 signal

load('number.mat');

specgram(secret)
%%

a = 0.0;
b = 0.33;
c = 0.36;
d = 1.0;

N = 98;
%%

f=firpm(N, [a,b,c,d], [0, 0, 1, 1]);

%%

freqz(f)

%%

y = conv(secret, f);

%%

soundsc(y)
