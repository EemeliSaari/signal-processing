% Task 4

% Continue from Task 3.

%% a) Calculate the threshold value c

c = mean([mean(X1)*w' mean(X2)*w']);

%% b) Calculate the number of correctly classified points

correct1 = 0;
for i=1 : length(X1)
    if (w*X1(i, :)' >= c)
        correct1 = correct1 + 1;
    end
end

correct2 = 0;
for i=1 : length(X2)
    if (w*X2(i, :)' < c)
        correct2 = correct2 + 1;
    end
end

percentage = (correct1 + correct2)/(length(X1) + length(X2));

disp(['Accuracy for classification: ', num2str(percentage * 100), '%'])