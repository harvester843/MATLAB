% Benjamin Lipscomb
% 10 February 2016

function n = iddd643(num)
n=zeros(1, 16); %creates vector of 16 zeros
if num < 0      %if the number to be converted is less than 0..
    n(1) = 1;   %assign it a 1 in the n vector
else            %otherwise..
    n(1) = 0;   %assign it a 0 in the n vector
end             %end if-else statement

p = 0;          %value of the exponent
b = 15;         %initial number of bits to be decremented from the exponent

while 2^p<=num  %when the sum of power of 2 is less than the number  
    p=p+1;      %add 1 to the exponent
end             %end while loop

p=p-1;          %assigns decrement to the exponent
exp=p+b;        %gives a starting reference to the exponent, sets it to decrement
d=num/2^p;      
decimal=d-floor(d); %gets the mantissa number
exBias=6;       %sets bits of exponent bias

while exp~=0 && exBias>=2 %as long as the exponent is not equal to zero and exponent bias is greater than 2
    if rem(exp,2) == 0;   %if the remainder of the exponent equals 0
        n(exBias)=0;      %set the exponent bias digit in the vector to 0
        exp=exp/2;        %update
    else 
        n(exBias)=1;      %otherwise set the exponent bias digit in the vector to 1
        exp=(exp-1)/2;    %update and decrement
    end                   %end if-else statement
    exBias=exBias-1;      %update the exponent by decrementing it
end                       %end while loop

man = 7;                  %sets value of the mantissa number to 7
while man>6 && man<=16    %mantissa number is 10 bits long
    if  (decimal*2)>1     %if the mantissa number is greater than 1 when multiplied by 2
        n(man)=1;         %then assign the mantissa digit to 1 in the n vector
        decimal=(decimal*2)-1; %update the value of the mantissa number
    else
        n(man)=0;         %mantissa number isnt greater than 1 then assign it a 0 in the n vector
        decimal=(decimal*2)-1; %update the mantissa number
    end                   %end if-else statement
    man=man+1;            %increment the mantissa number by 1
end                       %end while loop
end                       %end function iddd643

        
