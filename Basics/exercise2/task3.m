% Task 3
% Testing simple plotting

%% Plot the cosine function on the interval [0, 2?].

syms f(x)
f(x) = cos(x);

% Setup variables that can be used to configure plot range.
a = 0;
b = 1;

fplot(f(x), [a*pi, b*2*pi])
