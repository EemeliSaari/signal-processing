% Task 1
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercises 2.1-2.8 on pages 36-37

%% 2.1

% Declare a vector variable

x = [1 3 0 -1 5];

%% 2.2

% Display specific variable

disp(x)

%% 2.3

% Display the workspace variables

whos

%% 2.4

% Declaring vector in a different way with commas

a = [5, 6, 7];

%% 2.5

% Declaring a vector without space/comma can cause unwanted behavior

x_ = [130-15];

% Will result in a single element vector
disp(x_)

%% 2.6

% Declaring a vector variable from two variables

a = [1 2 3];
b = [4 5];
c = [a -b];

% The vector c will be a extended with -b.

disp(c)

%% 2.7

a = [1 3 7];
a = [a 0 -1];

% Here we will simply add numbers 0 and -1 to end of vector a. The same
% syntax as R's a <- c(1,3,7); a <- c(a, 0, -1); 

disp(a)

%% 2.8

% Emptying the vector variables

x = [];

% !NOTE! That type "clear x" would cause x to be removed from workspace.