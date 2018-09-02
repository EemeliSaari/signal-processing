% Task 1
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercises 2.1 and 2.2 on pages 76-77.

%% 2.1

% a) 9,87: Invalid, Comma separates decimal marker is dot.

% b) .0: Valid
disp(.0)

% c) 25.82: Valid
disp(25.82)

% d) -356231: Valid
disp(-356231)

% e) 3.57*e2: Invalid, e2 is interpreted as variable

% f) 3.57e2.1 Invalid: can't raise to power of 10^2.1 with mathematical
% notation

% g) 3.57: Valid
disp(3.57e+2)

% h) 3,57e-2: Invalid, the same as in the 2.1 a)

%% 2.2

% a) a2: Valid

% b) a.2: Invalid, the dot is used to refer to struct subvariables

% c) 2a: Invalid, the variable names must start with string

% d) 'a'one: Invalid, The '' statement declares a string

% e) aone: Valid

% f) _x_1: Invalid, the variable name can't start with undercase _

% g) miXedUp: Valid camelCase variable

% h) pay day: Invalid, whitespace can't be used to separate variable names

% i) inf, Valid but highly unrecommended. Will override the native inf
% variable.

% j) Pay_Day: Valid

% k) min*2: Invalid, * is expression statement and can't be used in
% variable names

% l) what: Valid but highly unrecommended. Will override the native 'what'
% function.
