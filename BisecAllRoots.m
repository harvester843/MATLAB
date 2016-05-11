% Benjamin Lipscomb
% 15 March 2016

function R = BisecAllRoots(Fun,a,b,TolMax )
n=10;
Fun = @(x) x^4-5.5*x^3-7.2*x^2+43*x+36;
a=-10;
b=10;
TolMax=0.0001;
c=1;
is=1;
j=0;

while c==1;
    c=0;
    h=(b-a)/n;
    j=j+1;
    if j==5
        break
    end
    for i=1:n
        ai=a+h*(i-1);
        bi=ai+h;
        Fai=Fun(ai);
        Fbi=Fun(bi);
        %see if a sign changes
        if Fai*Fbi <0
            xs=BisectionRoot(Fun,ai,bi,TolMax);
            if n==10&is==1
            R(is)=xs;
            is=is+1;
        else
            nr=length(R);
            e=0;
            for ka=1:nr
                if abs(R(ka)-xs)
                    e=1;
                end
            end
            if e==0
                R(is)=xs;
                is=is+1;
                c=1;
            end
        end
    end
end
n=10*n;
end
end




