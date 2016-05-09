function At = transp(A)
[Ra,Ca]=size(A);
for i=1:Ra
    for j=1:Ca
        At(j,i)=A(i,j);
    end
end
end


