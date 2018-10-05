function [N, D] = design_lowpass(fp, fs, Rp, Rs, Fs)
% IIR low pass filter
%   fp = Passband cut-off frequency
%   fs = Stopband cut-off frequency
%   Rp = Passband ripple
%   Rs = Stopband ripple
%   Fs = Sampling frequency

%% Task 3.

% Normalize

fp = (fp./Fs)*2*pi;
fs = (fs./Fs)*2*pi;

% Calculate the c and omega_s
c = 1/(tan(fp/2));
omega_s = c * tan(fs/2);

% Calculate epsilon and variable A
eps = sqrt((10^(Rp/10) - 1));
A = sqrt(10^(Rs/10));

%% Task 4.

% Estimate the order
M = ceil(log10((A^2 - 1)/eps^2)/(2*log10(omega_s)));

% Calculate the poles
p = zeros(1, M);
for k=1 : M
    p(k) = 1/(eps^(1/M)) * exp(pi*1j*(1/2 + (2*k - 1)/(2*M)));
end

% Map the poles to digital filter poles
p_ = (1 + p./c)./(1 - p./c);

z = (ones(1, M).*(-1))';
k = 1;

% Use zp2tf to calculate results
[N, D] = zp2tf(z, p_', k); 

% Calculate the true gain.
K = sum(N)/sum(D);
N = N / K;

end

