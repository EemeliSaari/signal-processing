% Task 4

% Convolution calculation with Matlab

%% a) Periodic Convolution

% Generate random signal of 8192 samples

N = 8192;

F = rand(1, N);

% Calculate periodic convolution

h = 0.05*[ones(1, 20), zeros(1, N-20)];

y1 = ifft(fft(F) .* fft(h));
y2 = conv(F, h);

% Plot the results

plot((1:200),real(y1(1:200)),(1:200),y2(1:200))

%% b) Compare calculation times

n = 1000:1000:15000;

conv_matlab = zeros(1, length(n));
conv_fft = zeros(1, length(n));

for i=1 : length(n)
    N = n(i);

    F = rand(N, 1);
    h = 0.05*[ones(1, 20), zeros(1, N-20)];
    
    start = tic;
    X = ifft(fft(F) .* fft(h));
    conv_matlab(i) = toc(start);

    start = tic;
    X = conv(F, h);
    conv_fft(i) = toc(start);
end

figure;

plot(n, conv_matlab)
hold on
plot(n, conv_fft); 

legend('Conv Matlab', 'Conv FFT')
saveas(gcf, 'task3b.png')