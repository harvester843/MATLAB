
% Benjamin Lipscomb
% Michelle Fernandez
% CSCI280 Computational Mathematics
% Dr. Xuwei Liang
% Assignment 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xa = GaussPivotLarge(A,B)
AB=[A,B];   %Appends column b to matrix a
[row,col]=size(AB); %Determines the size of AB
l=1;    %First row
for j=1:row-1   %Loops through elements of the matrix
    %Start pivoting
    if AB(j,j)==0;
    for k=j+1:row   %Defines the lower triangle 
        while abs(AB(l,j))<abs(AB(k,j)) %Finds the row with the largest pivot element
            tempAB=AB(j,:); %Switches rows if a row with larger pivot is found
            AB(j,:)=AB(k,:);
            AB(k,:)=tempAB;
        end
    end
    end %End pivoting
    %Convert the elements below the diagonal element to zero
    for i=j+1:row
        AB(i,j:col)=AB(i,j:col)-AB(i,j)/AB(j,j)*AB(j,j:col); 
    end
    l=l+1;  %Changes the row
end
Xa=zeros(row,1); %Determines the size of the output array
Xa(row)=AB(row,col)/AB(row,row); %Convert diagonal elements to ones
for i=row-1:-1:1 %Back substitution
    Xa(i)=(AB(i,col)-AB(i,i+1:row)*Xa(i+1:row))/AB(i,i);
end
end


