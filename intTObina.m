
function b = intTObina(d)   %input
b=[];
r=0;
q=1;

%while the remainder is 0 the loop checks to see if the integer(when
%divided by 2) is greater than 0 and less than 1. 
while r == 0    
    if d/2>0      %the number divided is greater than 0          
        if d/2~=round(d/2)  %if the rounded number divided has a remainder
            b(q)=1;         %then assign that number a 1 in the vector b
        else                %otherwise
            b(q)=0;         %assign it a 0
        end                 %end nested if-else statement
    end                     %end if statement
    
    if d/2<1                %when the number divided by 2 is less than 1
        b(q)=1;             %assign it a 1 in the vector
        r=1;                %update the value of r, will end the while loop, cannot be divided any further
    else
        d=(d-rem(d,2))/2;   %divide the number by 2 and subtract the remainder
        q=q+1;              %update the value of q until it cannot be divided anymore
    end                     %end if-else statement
end                         %end while loop
binVec = zeros(1,20);       %creates an array of 20 zeros
for r=1:length(b)           %r will step through the the vector 1 element at a time
    binVec(r)=b((length(b)-r)+1); %assign the 20 zeroes to the vector and moves from back to front
    
end                         %end for loop

if length(b)<8              
    b=[zeros(1,20-length(b)),binVec]; %puts binary vector in vector b   
else
     if length(binVec)>20    %if the length of the vector exceeds 20 zeroes, print an error
     binVec=['ERROR: The number entered is too large for this function to handle'];  
    end                     %end if-else statenebt
end                         %end if statement

b=binVec;                  
end                         %end function intTObina



