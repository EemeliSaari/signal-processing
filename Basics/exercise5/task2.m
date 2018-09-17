% Task 2

% Handling basic audio signal with Matlab

u = -7:1:14 >= 0;

windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;
stem(filter(b,a,u))
