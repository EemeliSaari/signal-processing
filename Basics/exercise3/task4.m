% Task 4

% Matrices with Matlab

%% a) Create a 10 × 10 matrix

A = reshape(1:100, [10 10]);

%% b) Raise each element of the matrix A to the third power.

A.^3
power(A, 3)

%% c) Calculate the third power A^3 of the matrix A.

A^3

%% d) Create a 10 × 10 matrix of random numbers and assign it to the variable B.

B = rand(10);

%% e) Calculate the product of inverse matrix of the matrix B and B

C = inv(B);

B*C
