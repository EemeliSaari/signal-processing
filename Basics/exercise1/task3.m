% Task 1
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercises on page 64 and on page 66

%% Page 64.

% Calculate 1^2 + 2^2 + 3^2 ... + 1000^2

s = 0;

echo off
for i = 1 : 1000
   s = s + i^2;
end
echo on

disp('Result:')
disp(s)

% Calculate 1 - 1/3 + 1/5 - 1/7 + 1/9 ... - 1/1003

s = 1;
seq = 3:2:1003;

echo off
for i = 1 : length(seq)
    s = s + 1/(seq(i) * (1 - 2*mod(i, 2)));
end
echo on

disp('Result:')
disp(s)

% Sum the left-hand side of 1/(1^2 * 3^2) + 1/(3^2 * 5^2) +... = (pi^2 - 8) / 16

s = 0;
seq1 = 1:2:1000;
seq2 = 3:2:1001;

echo off
for i = 1 : length(seq1)
   s = s + 1/(seq1(i)^2 * seq2(i)^2);
end
echo on

disp('Result:')
disp(s)

%% Page 66

% a) x = 3 > 2 = True/1
disp(3 > 2)

% b) x = 2 > 3 = False/0
disp(2 > 3)

% c) x= -4 <= -3 = True/1
disp(-4 <= -3)

% d) x = 1 < 1 = False/0
disp(1 < 1)

% e) x = 2 close to 2 = True/1
disp(abs(2-2) <= 1e-24)

% f) x = 3 == 3 = True/1
disp(3 == 3)

% g) x = 0 < 0.5 < 1 = True/1
disp((0 < 0.5) && (0.5 < 1))
