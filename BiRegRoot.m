% Benjamin Lipscomb
% Michelle Fernandez
% CSCI280 Computational Mathematics 
% Dr. Xuwei Liang
% Homework Assignment 3

function xNS = BiRegRoot(Fun,a,b,ErrMax)
format long g
Fun=@(x) sin(x)/x-3/4;
a=0.1;
b=1.4;

%Xs = BiRegRoot(Fun,a,b,0.00001);

imax=100;   %max number of iterations
Fa=Fun(a);
Fb=Fun(b);

%stop the program if the function has the same
%sign at points a and b
if Fa*Fb>0
    xNS=('Error the function has the same sign at point a and b');
else
    xNS=(a+2)/2;    %calculates the numerical solution of the interation xNS
    ErrMax=(b-a)/2;   %calculates the tolerance
    FxNS=Fun(xNS);  %calculates the value of f(xNS)
    if FxNS==0;
        fprintf('An exact solution x=%f was found',xNS);
        Xs=xNS;
    else
        %Finds the solution using the straight line equation between the 
        %two points within 100 iterations
        for i=1:imax
            xNS=(a*Fun(b)-b*Fun(a))/(Fun(b)-Fun(a));
            ErrMax=(b-a)/2;   %calculates current the tolerance
            FxNS=Fun(xNS);  %calculates the current value of f(xNS)
            if FxNS==0
                 Xs=xNS;
                 break;
            else
                %Stops the program if the tolerance is lower than the
                %desired tolerance
                if ErrMax<0.00001
                    fprintf('An exact solution x=%f was not found',xNS);
                    break;
                    
                %determines if the true solution is between a and xNS
                %or between b and xNS, then select a and b for the next
                %iteration
                elseif Fun(a)*FxNS<0
                    b=xNS;
                else
                    a=xNS;
                end
            end
        end
    end
    %Display error if the solution is not obtained within 100 iterations
    if i==imax
        fprintf('Solution was not obtained in %i iterations',imax);
    end
end
end



