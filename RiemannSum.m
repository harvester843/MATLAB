% Benjamin Lipscomb
% Michelle Fernandez
% CSCI280 Computational Mathematics
% Dr. Xuwei Liang
% HW Assignment 2
% Problem 2: Question 2.25


function I = RiemannSum(Fun, a, b)
a=0;
b=1;
fx = (b-a)/10;
c=(fx-a)/2;
I=0;

%iterates through 10 subintervals to find the integral
for i=1:10
    s=Fun(c)*fx;
    c=c+fx;
    I=I+s;
end
end

