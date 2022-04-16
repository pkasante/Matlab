function [F] = Fibonacci( n )
%This function computes the fibonacci numbers
% n is the number of rows for the column matrix

f = zeros(n,1); 
f(1) = 1;
f(2) = 2;

for k = 3:n
    f(k) = f(k-1) + f(k-2) ;

end
display(f)
      
