% Task 5.

% Image thresholding with LDA

%% Load the image

org = imread('canoe.jpg');
imshow(org, []); hold on;


[x1, y1] = ginput(1);
[x2, y2] = ginput(1);

%% Take 7x7 kernels around the points

win1 = org(y1 - 3:y1 + 3, x1 - 3:x1 + 3, :);
win2 = org(y2 - 3:y2 + 3, x2 - 3:x2 + 3, :);

%% Reduce dimensions

X1 = double(reshape(win1, 49, 3))';
X2 = double(reshape(win2, 49, 3))';

%% Calculate the LDA w

w = inv(cov(X1') + cov(X2'))*(mean(X1') - mean(X2'))';

%% Separate the areas

img = double(org);
gray = w(1)*img(:,:,1) + w(2)*img(:,:,2) + w(3)*img(:,:,3);

imshow(gray, [])

%% Calculate the threshold value between areas

c = mean([mean(X1')*w mean(X2')*w]);

%% Display the thresholded image

imshow(gray > c, [])