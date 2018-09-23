% Task 5

% Attenuation for an input signal oscillating

%% LTI system: y(n) = 1.143y(n?1) ? 0.4128y(n?2) + 0.0675x(n) + 0.1349x(n?1) + 0.0675x(n?2)

Fs = 20000;
f = 5000;

w = (2*pi*f)/Fs;
z = exp(1j*w);

a = [1 -1.143 0.4128]; % Y(n) coefficient
b = [0.0675 0.1349 0.0675]; % X(n) coefficient

%% Solving H(z)

% H(z) = Y(z)/X(z)

H = sum(a .* z.^((-1)*(1:length(a))))/sum(b .* z.^((-1)*(1:length(b))));

A = 20*(log(abs(H))/log(10));
