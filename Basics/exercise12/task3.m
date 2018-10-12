% Task 3

% Implementing LDA for 2D data.

%% Load the data

load('testdata_fisher.mat');

%% a) Display the data points

scatter(X1(:, 1), X1(:, 2), 'red', 'filled'); hold on
scatter(X2(:, 1), X2(:, 2), 'green', 'filled'); hold on

% b) Calculate the LDA w and display the line

w = (mean(X1) - mean(X2))*inv(cov(X1) + cov(X2));

line([-w(1), w(1)], [-w(2), w(2)])

axis equal