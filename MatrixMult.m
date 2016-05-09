% Benjamin Lipscomb
% Michelle Fernandez
% CSCI280 Computational Mathematics
% Dr. Xuwei Liang
% HW Assignment 2
% Problem 3: Question 2.26


function C = MatrixMult(A,B)
%gets size of rows and columns of A and B
[Ra,Ca]=size(A);
[Rb,Cb]=size(B);

%determines if the matrices are not compatible
if Ca ~= Rb
    error('The matrix canott be multiplied, the amount of rows in B do not equal the amount of columns in A');
end

%creates a vector of zeros corresponding to rows of A and columns of B.
%iterates through the rows and columns of each matrix and multiplyies
%the two matrices.
C=zeros(Ra,Cb);
for i=1:Ra
    for j=1:Cb
        for k=1:Ca
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end


end

