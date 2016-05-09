
%Benjamin Lipscomb
%Michelle Fernandez
%CSCI280 Computational Mathematics
%Homework 1, Problem 2

function b=deciTObina(d)
b=zeros(1,30);
dec=floor(d);
decml=d-floor(d);
i=16;
% i set to 16, so this while loop will iterate 16-30 in the vector. Numbers
% on the right side of the decimal will fill those vacancies.
    while i <= 30 
        if decml*2<1      %checks if the decimal part of d is less than 1
            b(i) = 0;     %if it is it will assign 0 to the vector
           decml=decml*2; % the value will be multiplied by 2
        else              %otherwise, if the decimal exceeds 1...
             b(i)=1;      %assign a 1 to the vector
             decml=(decml*2)-1; %then multiply the decimal by 2 and subtract it by 1, this will make it less than 1
        end               %end if statement
        i=i+1;            %after each iteration move to the next spot in the vector
    end
    i=15;       %set the limit of the vector
while dec~=0    %as long as d doesnt reach 0 it will perform these if statements
      if rem(dec,2) == 1    %checks if there is a remainder
           b(i)=1;          %if there is it will assign a 1 to that spot in the vector
           dec=(dec-1)/2;   %update the statement by subtracting it by 1 and divide it by 2
      else     %if there is no remainder...
            b(i)=0;         %a 0 will be assigned to that spot in the vector
            dec=dec/2;      %update the statement by dividing the number by 2
      end   %end if-else statement
   i=i-1;   %at the end of the iteration it will decrement and move back one space in the vector
end     %end while statement  
end     %end of deciTObina function
