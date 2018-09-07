% Task 1
% Introduction exercises from the B. Hahn, D. Valentine: Essential Matlab for Engineers and Scientists(5th Edition)

%% Exercise 2.26 on page 81.

%% 2.26

syms P(t)

P(t) = 197273e3/(1+exp(-0.03134*(t-1913.25)));

fplot(P(t), [1790, 2000])

%% 2.6 Continue

% We can study the function further

syms dP(t)

% Derivate the function
dP(t) = diff(P, t);

% We'll search the approximate point where the derivate is zero
start = 2000;
accuracy = 1e-6; % Decent accuracy because we're after the "steadyness"
for i=start : start + 2000
    value = abs(eval(dP(i)));
    if(mod(i, 100)==0)
        disp(['Current iteration: ', num2str(i), ' Derivate: ', num2str(value)])
    end

    if(value < accuracy)
        disp(['The approximate steady starting from: ', num2str(i)])
        break
    end
end
