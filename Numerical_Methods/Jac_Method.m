%Solving Ax=b using the Jacobi method
%A:nxn matrix
%b:nx1 matrix
%count:counting iterations
%Maxiter:maximum number of iterations

function Jac_Method(A,b,x0,tol,Maxiter)
n = length(b);
for j = 1 : n
     x(j) = ((b(j) - A(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / A(j,j)); 
end
x1 = x';
count = 0;
while norm(x1-x0,1) > tol
    for j = 1 : n
     xn(j) = ((b(j) - A(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / A(j,j));
    end
    x0 = x1;
    x1 = xn';
    count = count + 1;
    if(count==Maxiter)
        break
    end
end

display(count)
x = x1';
display(x)
