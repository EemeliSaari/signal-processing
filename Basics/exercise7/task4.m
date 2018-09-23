% Task 4

% Filter the signal x(n) = sin(0.05·2pi n)

%% Using system: y(n) = 0.0349x(n) + 0.4302x(n ? 1) ? 0.5698x(n ? 2) + 0.4302x(n ? 3) + 0.0349x(n ? 4)

t = 0:1:360;
f = sin(0.05*pi*t);

b = [0.0349 0.4302 -0.5698 0.4302 0.0349];
a = 1;

y1 = filter(b, a, f);
y2 = 0.3050*sin(0.05*2*pi*t - 0.6283);

%% Plot the results as well as the original signal

figure;
plot(t, f)
hold on
plot(t, y1)
hold on
plot(t, y2)
legend('Original', 'estimated', 'true')
