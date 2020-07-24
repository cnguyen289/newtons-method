function [p, P] = newtons( f, fp, p0, tol, maxits) 
    %[p,P] is needed for iteration function for semilogy plot
    
   
   p = p0;
   %needed for recursion
   P = [];
    
    for i = 1:maxits
    
   p = p - f(p)/fp(p);
   %Newtons method formula
   
   p = real(p);
   P = [P p];
   
   if abs(f(p)) < tol
       %tolerance
       
      
   return;
   
    end 
    
    end

   
   
end 

function [p , P] = secant( f, p0, p1, tol, maxits)
    
    
   P = [];
    
    for i = 1:maxits
        
        
        
        p = (p1 * f(p0)- p0 * f(p1)) / (f(p0)-f(p1));
        
        p1 = p0;
        p0 = p;
        %recursion needed for iterated function
        
        
        P =[P,p];
        
        
        if abs((p1-p0)/2) < tol
            %tolerance needed as absolute value of the average
            %of p0 and p1
            
            return;
        end
    end
    
function p = fp(g, p0, maxits)
    %array for p0
   
    %Anon function, user can input any function they want it
   

p = p0;



for i = 1:maxits
    p = g(p);
    fprintf('After %d iterations: %.14e\n', i,p);
    
    

end

    
 end

end

%Collaborators: Brian Huang, John Chancey, Professor Knight