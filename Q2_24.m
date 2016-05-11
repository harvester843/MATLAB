% Benjamin Lipscomb
% 22 February 2016

clear
clc

f=inline('x.^3*cos(x)');
y=[];
x=[2.6:0.05:3.4];

%The derivative is calculated by iterating through x 16 times.
%The 9th iteration must be skipped becuase at the 9th iteration
% x =3, and 3-3=0. The function cannot divide itself by 0, so it
%skips the 9th iteration using an OR conditional operator.

for i=1:17
    if i > 9 || i < 9
        y(i)=(f(x(i))-f(3))/(x(i)-3);
    else
        y(i)=((f(3.05)-f(2.95))/(3.05-2.95));
        
    end
end

%Displays and plots the vector y, which contains the derivatives
%calculated by the for loop.
display(y);
plot(x,y)
xlabel('x');
ylabel('derivative x');

