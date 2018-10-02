% Task 3

fc = 0.3;
fs = 0.5;

%%
n = -20:fs:20;

plot(n, abs(sinc(n * fc)*2*fc))

%%

n = -30:fs:30;

plot(n, abs(sinc(n * fc)*2*fc))

%%

n = -300:fs:300;

plot(n, abs(sinc(n * fc)*2*fc))
