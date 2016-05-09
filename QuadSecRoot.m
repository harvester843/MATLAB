% Benjamin Lipscomb
% Michelle Fernandez
% CSCI280 Computational Mathematics 
% Dr. Xuwei Liang
% Homework Assignment 3

function Xs = QuadSecRoot(Fun,a,b)
%  F3_2=@(x) x-2*exp(-x);
%  Sola = QuadSecRoot(F3_2,0,1)
%  F3_3=@(x) sin(x)/x-3/4;
%  Solb = QuadSecRoot(F3_3,0.5,1.5)

Fa=Fun(a);
Fb=Fun(b);

%Checks if a and b contain the solution within the interval
if Fa*Fb>0
    Xs=('Error');
else
    %Calculates the numerical solution of the iteration Xs and the value of
    %f(Xs) of the current iteration
    for i=1:20
        Xs=(a+b)/2;
        FXs=Fun(Xs);
        %Stop the program if f(Xs) equals 0
        if FXs==0
            break
        end
        
        %Determines if the solution is between a and f(Xs) or b and f(Xs)
        %and selects a or b for the next iteration
        if Fa*FXs<0
            b=Xs;
        else
            a=Xs;
            Fa=FXs;
        end
    end
end
end

