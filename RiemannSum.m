% Benjamin Lipscomb
% 22 February 2016

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

