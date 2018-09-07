function celcius = fahrenheit_to_celcius(fahrenheit)
%Simple Fahrenheit2Celcius converter
%   Takes in a number and returns anumber
syms C(F)
C(F) = (F - 32)/1.8;

celcius = eval(C(fahrenheit));

end

