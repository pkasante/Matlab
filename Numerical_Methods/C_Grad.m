%This program solves the conjugate gradient method
% take A as an NxN SPD matrix,b the Right-hand side Nx1 column vector and x0 is an Nx1 start vector
% tol is relative residual error tolerance desired by user to break the process 
% User also chooses desired max_iter which is the maximum number of iterations to perform
% x is the Nx1 solution vector, count is Number of iterations performed

function x = C_Grad(A, b, x0, tol,max_iter,epsilon)
x = x0;         
r = b - A*x0;   
V = r;         
rho = r'*r;
count = 0;         

error = norm(b);
if error < epsilon  
  warning(['norm(f) is very close to zero, taking absolute residuum' ... 
    				 ' as break condition.']);
	error = 1;
end

while (norm(r)/error > tol)   
	a = A*V;
	alpha = rho/(a'*V);
	x = x + alpha*V;
	r = r - alpha*a;
	rho_new = r'*r;
	V = r + rho_new/rho * V;
	rho = rho_new;
	count = count + 1;
	if (count == max_iter)                      
		break
	end
end