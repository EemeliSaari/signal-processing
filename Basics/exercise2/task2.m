% Task 2
% Defining the basic function with Matlab

%% Testing basic Fahrenheit conversion

test_set = [32 212];
expected = [0 100];

for i=1 : length(test_set)
    result = fahrenheit_to_celcius(test_set(i));
    disp(['Converted: ' num2str(result), ' Expected: ', num2str(expected(i))])
end
