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
specgram(sgn)

% We can plot the signal
figure;
plot(sgn)
% In the case of sound we can also listen to signal
soundsc(sgn)

%% Filtering signal

h = fir1(150, 0.9, 'high');

filtered = filter(h, 1, sgn);

%% Visualizing filtered results

figure;
specgram(filtered)

figure;
plot(filtered)

soundsc(filtered)

%% Conclusion:

% The high-pass filter does filter out the bird sound quite well. However
% result is still messy and the sound intensity is high