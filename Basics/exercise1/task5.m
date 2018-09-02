% Task 1
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercises  Exercises 2.20 on pages 79.

% Declare the vector v
v = [3 1 5];
% Set variable i as value 1.
i = 1;

% Sets the j values to represent vector v's values
for j = v
    % Each loop j = v(loop_number)
    % Would be the same as for i = 1 : length(v); j = v(i)

    % Add 1 to variable 1
    i = i + 1;
    
    % Check if i is equal to 3
    if i == 3
        % Add 2 to variable i
        i = i + 2;
        % Declare variable m that is equal to i + j
        m = i + j;
    end
    % Continue if not
end

%% Table of variable per loop

% 1:
i = 2;
j = v(1); %3
% Since i != 3 continue
m = libpointer; %NULL <-> Doesn't exist yet

% 2:
i = 3;
j = v(2); %1
% Since i == 3:
i = 5;
m = 5 + 1;

% 3:
i = 6;
j = v(3); %5
m = 6;
% Since i != 3 continue

% exit from the loop since all the v values are handled.