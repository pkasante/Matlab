function GaussSE(A,b,x0,tol,max_iter)
n=size(x0,1);
normVal=Inf; 
while normVal>tol
    x_old=x0;
    
    for i=1:n
        sigma=0;
        for j=1:i-1
            sigma=sigma+A(i,j)*x0(j);
        end
        for j=i+1:n
            sigma=sigma+A(i,j)*x_old(j);
        end
        x0(i)=(1/A(i,i))*(b(i)-sigma);
    end
    itr=itr+1;
    if(iter==max_iter)
        break
    end
end

fprintf('Solution of the system is : \n%f\n%f\n%f\n%f in %d iterations',x0,itr);
end