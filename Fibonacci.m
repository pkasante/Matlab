function [F] = Fibonacci( n )
%This function computes the fibonacci numbers
% n is the number of rows for the column matrix
% for the Fibonacci sequence,each number is the sum of the two preceding ones
f = zeros(n,1); 
f(1) = 0;
f(2) = 1;

for k = 3:n
    f(k) = f(k-1) + f(k-2) ;

end
display(f)
      
