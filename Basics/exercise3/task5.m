% Task 5

% Handling basic audio signal with Matlab

%% Loading from file

zip_name = 'Ex_3.zip';

files = unzip(zip_name); % The zip contains only one example

file_name = files{1};

sgn = audioread(file_name);

%% Basic visualization

% Common practice is to visualize with spectogram
figure;
subplot(2,1,1)
specgram(sgn)

% We can plot the signal
subplot(2,1,2)
plot(sgn)
% In the case of sound we can also listen to signal
soundsc(sgn)

%% Filtering signal

h = fir1(150, 0.9, 'high');

filtered = filter(h, 1, sgn);

%% Visualizing filtered results

figure;
subplot(2, 1, 1)
specgram(filtered)
title('Filtered')
subplot(2, 1, 2)
specgram(sgn)
title('Original')

figure;
subplot(2, 1, 1)
plot(filtered)
title('Filtered')
subplot(2, 1, 2)
plot(sgn)
title('Original')
soundsc(filtered)

%% Conclusion:

% The high-pass filter does filter out the lower deep sound pretty well.
% However result is still messy and the sound intensity is high