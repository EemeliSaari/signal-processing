% Task 3

% Benchmarking techniques with Matlab

%% DFT matrix of N=8 can be done via

N=8;
F=exp(-2*pi*1j*(0:N-1)' * (0:N-1)/N);

%% Compare DFT calculation times

n = 1:10:1000;

dft_matrix = zeros(1, length(n));
dft_matlab = zeros(1, length(n));

for i=1 : length(n)
    N = n(i);
    matrix = rand(N, 1);

    F = exp(-2*pi*1j*(0:N-1)' * (0:N-1)/N);

    start = tic;
    X = F * matrix;
    dft_matrix(i) = toc(start);

    start = tic;
    X = fft(matrix);
    dft_matlab(i) = toc(start);
end

%% Visualizing the results

figure;

plot(n, dft_matlab)
hold on
plot(n, dft_matrix); 

legend('Matlab FFT', 'Transform matrix')
saveas(gcf, 'task3.png')