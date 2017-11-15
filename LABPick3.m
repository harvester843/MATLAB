
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% Benjamin Lipscomb                                                       %
% Lottery Array Builder Script                                            % 
% 7 November 2017                                                         %
% Version 1.0                                                             %
%                                                                         %
% The program reads in an Excel spreadsheet with all North Carolina       %
% Lottery numbers ever drawn. Clean the data by horizontally concatenating%
% All lottery numbers are transposed from a 3x7436 matrix to a 1x22308    %
% element array.                                                          % 
% Iterate through the array, going through all 1 and 2 digit combinations %
% of numbers. Create an array for each combination. Get the mode of each  %  
% array. At the end of the array (last drawn numbers): Use the last two   %  
% digits and call that array. Using that mode, discard the first digit and% 
% append the new digit to the last known drawn number (v(end)). Get the   %
% mode of that combination. Repeat this process until 3 new digits are    %
% selected. Then concatenate each new mode to the previous two numbers,   %
% display the numbers to play.                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
%nums = xlsread('NCPick3All.xlsx'); % Read in all 2230x numbers
nums = xlsread('NCPick3-Half.xlsx'); % Read in Half the drawn numbers
B = reshape(nums',[],1);
C = horzcat(nums);
v=reshape(B',1,[]);
frequent_nums_array=[];

% Initialize Arrays

% Zero Combination Arrays
zero_zero_array=[];
zero_one_array=[];
zero_two_array=[];
zero_three_array=[];
zero_four_array=[];
zero_five_array=[];
zero_six_array=[];
zero_seven_array=[];
zero_eight_array=[];
zero_nine_array=[];

one_zero_array=[];
one_one_array=[];
one_two_array=[];
one_three_array=[];
one_four_array=[];
one_five_array=[];
one_six_array=[];
one_seven_array=[];
one_eight_array=[];
one_nine_array=[];

two_zero_array=[];
two_one_array=[];
two_two_array=[];
two_three_array=[];
two_four_array=[];
two_five_array=[];
two_six_array=[];
two_seven_array=[];
two_eight_array=[];
two_nine_array=[];

three_zero_array=[];
three_one_array=[];
three_two_array=[];
three_three_array=[];
three_four_array=[];
three_five_array=[];
three_six_array=[];
three_seven_array=[];
three_eight_array=[];
three_nine_array=[];

four_zero_array=[];
four_one_array=[];
four_two_array=[];
four_three_array=[];
four_four_array=[];
four_five_array=[];
four_six_array=[];
four_seven_array=[];
four_eight_array=[];
four_nine_array=[];

five_zero_array=[];
five_one_array=[];
five_two_array=[];
five_three_array=[];
five_four_array=[];
five_five_array=[];
five_six_array=[];
five_seven_array=[];
five_eight_array=[];
five_nine_array=[];

six_zero_array=[];
six_one_array=[];
six_two_array=[];
six_three_array=[];
six_four_array=[];
six_five_array=[];
six_six_array=[];
six_seven_array=[];
six_eight_array=[];
six_nine_array=[];

seven_zero_array=[];
seven_one_array=[];
seven_two_array=[];
seven_three_array=[];
seven_four_array=[];
seven_five_array=[];
seven_six_array=[];
seven_seven_array=[];
seven_eight_array=[];
seven_nine_array=[];

eight_zero_array=[];
eight_one_array=[];
eight_two_array=[];
eight_three_array=[];
eight_four_array=[];
eight_five_array=[];
eight_six_array=[];
eight_seven_array=[];
eight_eight_array=[];
eight_nine_array=[];

nine_zero_array=[];
nine_one_array=[];
nine_two_array=[];
nine_three_array=[];
nine_four_array=[];
nine_five_array=[];
nine_six_array=[];
nine_seven_array=[];
nine_eight_array=[];
nine_nine_array=[];

nine_array = [];
eight_array=[];
seven_array=[];
six_array = [];
five_array=[];
four_array=[];
three_array = [];
two_array=[];
one_array=[];
zero_array=[];
double_eight_array=[];
final_nine_array=[];

% Initialize Counter Variables
zero_zero=0;
zero_one=0;
zero_two=0;
zero_three=0;
zero_four=0;
zero_five=0;
zero_six=0;
zero_seven=0;
zero_eight=0;
zero_nine=0;

% Binomial Coefficeint of 1x
one_zero=0;
one_one=0;
one_two=0;
one_three=0;
one_four=0;
one_five=0;
one_six=0;
one_seven=0;
one_eight=0;
one_nine=0;

% Binomial Coefficeint of 2x
two_zero=0;
two_one=0;
two_two=0;
two_three=0;
two_four=0;
two_five=0;
two_six=0;
two_seven=0;
two_eight=0;
two_nine=0;

three_zero=0;
three_one=0;
three_two=0;
three_three=0;
three_four=0;
three_five=0;
three_six=0;
three_seven=0;
three_eight=0;
three_nine=0;

four_zero=0;
four_one=0;
four_two=0;
four_three=0;
four_four=0;
four_five=0;
four_six=0;
four_seven=0;
four_eight=0;
four_nine=0;

five_zero=0;
five_one=0;
five_two=0;
five_three=0;
five_four=0;
five_five=0;
five_six=0;
five_seven=0;
five_eight=0;
five_nine=0;

six_zero=0;
six_one=0;
six_two=0;
six_three=0;
six_four=0;
six_five=0;
six_six=0;
six_seven=0;
six_eight=0;
six_nine=0;

seven_zero=0;
seven_one=0;
seven_two=0;
seven_three=0;
seven_four=0;
seven_five=0;
seven_six=0;
seven_seven=0;
seven_eight=0;
seven_nine=0;

eight_zero=0;
eight_one=0;
eight_two=0;
eight_three=0;
eight_four=0;
eight_five=0;
eight_six=0;
eight_seven=0;
eight_eight=0;
eight_nine=0;

nine_zero=0;
nine_one=0;
nine_two=0;
nine_three=0;
nine_four=0;
nine_five=0;
nine_six=0;
nine_seven=0;
nine_eight=0;
nine_nine=0;

num_nine=0;
num_eight=0;
num_seven=0;
num_six=0;
num_five=0;
num_four=0;
num_three=0;
num_two=0;
num_one=0;
num_zero=0;
double_eight=0;

%Initialize Counter Variables
a=1;b=0;c=1;d=0;e=1;f=0;g=1;h=0;i=1;j=1;k=0;l=0;m=1;n=0;o=1;p=0;q=1;r=0;
s=1;t=0;u=1;w=0;x=1;y=0;z=1;
aa=0;ab=1;ac=0;ad=1;ae=0;af=1;ag=0;ah=1;ai=0;aj=1;ak=0;al=1;am=0;an=1;ao=0;
ap=1;aq=0;ar=1;as=0;at=1;au=0;av=1;aw=0;ax=1;ay=0;az=1;

ba=0;
bb=1;
bc=0;
bd=1;
be=0;
bf=1;
bg=0;
bh=1;
bi=0;
bj=1;
bk=0;
bl=1;
bm=0;
bn=1;
bo=0;
bp=1;
bq=0;
br=1;
bs=0;
bt=1;
bu=0;
bv=1;
bw=0;
bx=1;
by=0;
bz=1;
ca=0;
cb=1;
cc=0;
cd=1;
ce=0;cf=1;cg=0;ch=1;ci=0;cj=1;ck=0;cl=1;cm=0;cn=1;co=0;cp=1;cq=0;cr=1;cs=0;
ct=1;cu=0;cv=1;cw=0;cx=1;cy=0;cz=1;da=0;

db=1;
dc=0;
dd=1;
de=0;
df=1;
dg=0;
dh=1;
di=0;
dj=1;
dk=0;
dl=1;
dm=0;
dn=1;
do=0;
dp=1;
dq=0;
dr=1;
ds=0;
dt=1;
du=0;
dv=1;
dw=0;
dx=1;
dy=0;
dz=1;

ea=0;
eb=1;
ec=0;
ed=1;
ee=0;
ef=1;
eg=0;
eh=1;
ei=0;
ej=1;
ek=0;
el=1;
em=0;
en=1;
eo=0;
ep=1;
eq=0;
er=1;
es=0;
et=1;
eu=0;
ev=1;
ew=0;
ex=1;
ey=0;
ez=1;

fa=0;
fb=1;
fc=0;
fd=1;
fe=0;
ff=1;
fg=0;
fh=1;
fi=0;
fj=1;
fk=0;
fl=1;
fm=0;
fn=1;
fo=0;
fp=1;
fq=0;
fr=1;
fs=0;
ft=1;
fu=0;
fv=1;
fw=0;
fx=1;
fy=0;
fz=1;

ga=0;
gb=1;
gc=0;
gd=1;
ge=0;
gf=1;
gg=0;
gh=1;
gi=0;
gj=1;
gk=0;
gl=1;
gm=0;
gn=1;
go=0;
gp=1;
gq=0;

ii=1;
ij=1;
ik=1;
il=1;
jf=0;
jg=0;
jh=0;
ji=0;
jj=1;
jk=1;
jl=0;
jm=0;
jn=0;


kl=0;
ll=0;
lm=0;
ln=0;
lo=0;
lp=0;
lq=0;
lr=0;
% Iterate through all the numbers drawn in sequential order.
while i < length(v+2)
    i=i+1;
    k=k+1;
        current_draw(i) = v(i-1);
        next_draw(k)=v(i);
    if current_draw(i) == 9
        num_nine = num_nine +1;
        nine_array=[nine_array, next_draw(i-1)];
        mode_nine=mode(nine_array);
        
        else if current_draw(i) == 8
                num_eight = num_eight +1;
                eight_array=[eight_array, next_draw(i-1)];
                mode_eight=mode(eight_array);
            end
             
        if current_draw(i) == 7
                num_seven = num_seven +1;
                seven_array=[seven_array, next_draw(i-1)];
                mode_seven=mode(seven_array);
        end
        
         if current_draw(i) == 6
                num_six = num_six +1;
                six_array=[six_array, next_draw(i-1)];
                mode_six=mode(six_array);
         end
        
          if current_draw(i) == 5
                num_five = num_five +1;
                five_array=[five_array, next_draw(i-1)];
                mode_five=mode(five_array);
          end
        
             if current_draw(i) == 4
                num_four = num_four+1;
                four_array=[four_array, next_draw(i-1)];
                mode_four=mode(four_array);
             end
        
            if current_draw(i) == 3
                num_three = num_three +1;
                three_array=[three_array, next_draw(i-1)];
                mode_three=mode(three_array);
            end
        
             if current_draw(i) == 2
                num_two = num_two+1;
                two_array=[two_array,9, next_draw(i-1)];
                mode_two=mode(two_array);
             end
        
            if current_draw(i) == 1
                num_one = num_one +1;
                one_array=[one_array, next_draw(i-1)];
                mode_one=mode(one_array);
            end
        
            if current_draw(i) == 0
                num_zero = num_zero +1;
                zero_array=[zero_array, next_draw(i-1)];
                mode_zero=mode(zero_array);
            end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     All 2-Digit Combinations of 0x                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        while q < length(current_draw+1)
            q=q+1;
            r=r+1;
            if current_draw(r) == 0 && current_draw(q) == 0
                zero_zero=zero_zero+1; % Counter for number of times the 0-0 pair appears
                zero_zero_array=[zero_zero_array, next_draw(q-1)]; % Array of all numbers that occur after 0-0
                mean_zero_one=mean(zero_zero_array); % average number of the array (between 1 and 0, can play either number)
                mode_zero_one=mode(zero_zero_array); % most frequent number occurring after the number 0 0
            end
        end    
            
        while ii < length(current_draw+1)
            ii=ii+1;
            ji=ji+1;
            if current_draw(ji) == 0 && current_draw(ii) == 1
                zero_one=zero_one+1;
                zero_one_array=[zero_one_array, next_draw(ii-1)];
                mean_zero_one=mean(zero_one_array); 
                mode_zero_one=mode(zero_one_array); 
            end
        end
        
         while ij < length(current_draw+1)
            ij=ij+1;
            jh=jh+1;
            if current_draw(jh) == 0 && current_draw(ij) == 2
                zero_two=zero_two+1;
                zero_two_array=[zero_two_array, next_draw(ij-1)];
                mode_zero_two=mode(zero_two_array); 
            end
         end
        
         while ik < length(current_draw+1)
            ik=ik+1;
            jg=jg+1;
            if current_draw(jg) == 0 && current_draw(ik) == 3
                zero_three=zero_three+1;
                zero_three_array=[zero_three_array, next_draw(ik-1)];
                mode_zero_three=mode(zero_three_array); 
            end
         end
         
         while a < length(current_draw+1)
            a=a+1;
            b=b+1;
            if current_draw(b) == 0 && current_draw(a) == 4
                zero_four=zero_four+1;
                zero_four_array=[zero_four_array, next_draw(a-1)];
                mode_zero_four=mode(zero_four_array); 
            end
         end
         
         while c < length(current_draw+1)
            c=c+1;
            d=d+1;
            if current_draw(d) == 0 && current_draw(c) == 5
                zero_five=zero_five+1;
                zero_five_array=[zero_five_array, next_draw(c-1)];
                mode_zero_five=mode(zero_five_array); 
            end
         end
         
         while e < length(current_draw+1)
            e=e+1;
            f=f+1;
            if current_draw(f) == 0 && current_draw(e) == 6
                zero_six=zero_six+1;
                zero_six_array=[zero_six_array, next_draw(e-1)];
                mode_zero_six=mode(zero_six_array);
            end
         end
         
         while g < length(current_draw+1)
            g=g+1;
            h=h+1;
            if current_draw(h) == 0 && current_draw(g) == 7
                zero_seven=zero_seven+1;
                zero_seven_array=[zero_seven_array, next_draw(g-1)];
                mode_zero_seven=mode(zero_seven_array);
            end
         end
         
         while m < length(current_draw+1)
            m=m+1;
            n=n+1;
            if current_draw(n) == 0 && current_draw(m) == 8
                zero_eight=zero_eight+1;
                zero_eight_array=[zero_eight_array, next_draw(m-1)];
                mode_zero_eight=mode(zero_eight_array); 
            end
         end
         
         while o < length(current_draw+1)
            o=o+1;
            p=p+1;
            if current_draw(p) == 0 && current_draw(o) == 9
                zero_nine=zero_nine+1;
                zero_nine_array=[zero_nine_array, next_draw(o-1)];
                mode_zero_nine=mode(zero_nine_array); 
            end
         end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     All 2-Digit Combinations of 1x                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         while s < length(current_draw+1)
            s=s+1;
            t=t+1;
            if current_draw(s) == 1 && current_draw(t) == 0
                one_zero=one_zero+1;
                one_zero_array=[one_zero_array, next_draw(s-1)];
                mode_one_zero=mode(one_zero_array);
            end
         end


        while u < length(current_draw+1)
            u=u+1;
            w=w+1;
            if current_draw(w) == 1 && current_draw(u) == 1
                one_one=one_one+1;
                one_one_array=[one_one_array, next_draw(u-1)];
                mode_one_one=mode(one_one_array); 
            end
        end
        
        
         while x < length(current_draw+1)
            x=x+1;
            y=y+1;
            if current_draw(y) == 1 && current_draw(x) == 2
                one_two=one_two+1;
                one_two_array=[one_two_array, next_draw(x-1)];
                mode_one_two=mode(one_two_array); 
            end
         end
        
         while z < length(current_draw+1)
            z=z+1;
            aa=aa+1;
            if current_draw(aa) == 1 && current_draw(z) == 3
                one_three=one_three+1;
                one_three_array=[one_three_array, next_draw(z-1)];
                mode_one_three=mode(one_three_array); 
            end
         end
         
         while ab < length(current_draw+1)
            ab=ab+1;
            ac=ac+1;
            
            if current_draw(ac) == 1 && current_draw(ab) == 4
                one_four=one_four+1;
                one_four_array=[one_four_array, next_draw(ab-1)];
                mode_one_four=mode(one_four_array);   
            end          
         end
         
         while ad < length(current_draw+1)
            ad=ad+1;
            ae=ae+1;
            if current_draw(ae) == 1 && current_draw(ad) == 5
                one_five=one_five+1;
                one_five_array=[one_five_array, next_draw(ad-1)];
                mode_one_five=mode(one_five_array); 
            end
         end
         
         while af < length(current_draw+1)
            af=af+1;
            ag=ag+1;
            if current_draw(ag) == 1 && current_draw(af) == 6
                one_six=one_six+1;
                one_six_array=[one_six_array, next_draw(af-1)];
                mode_one_six=mode(one_six_array); 
            end
         end
         
         while g < length(current_draw+1)
            ah=ah+1;
            ai=ai+1;
            if current_draw(ai) == 1 && current_draw(ah) == 7
                one_seven=one_seven+1;
                one_seven_array=[one_seven_array, next_draw(ah-1)];
                mode_one_seven=mode(one_seven_array); 
            end
         end
         
         while aj < length(current_draw+1)
            aj=aj+1;
            ak=ak+1;
            if current_draw(ak) == 1 && current_draw(aj) == 8
                one_eight=one_eight+1;
                one_eight_array=[one_eight_array, next_draw(aj-1)];
                mode_one_eight=mode(one_eight_array); 
            end
         end
         
         while al < length(current_draw+1)
            al=al+1;
            am=am+1;
            if current_draw(am) == 1 && current_draw(al) == 9
                one_nine=one_nine+1;
                one_nine_array=[one_nine_array, next_draw(al-1)];
                mode_one_nine=mode(one_nine_array); 
            end
         end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 2x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while an < length(current_draw+1)
            an=an+1;
            ao=ao+1;
            if current_draw(an) == 2 && current_draw(ao) == 0
                two_zero=two_zero+1;
                two_zero_array=[two_zero_array, next_draw(an-1)];
                mode_two_zero=mode(two_zero_array);
            end
         end


        while ap < length(current_draw+1)
            ap=ap+1;
            aq=aq+1;
            if current_draw(aq) == 2 && current_draw(ap) == 1
                two_one=two_one+1;
                two_one_array=[two_one_array, next_draw(ap-1)];
                mode_two_one=mode(two_one_array);
            end
        end
        
        
         while ar < length(current_draw+1)
            ar=ar+1;
            as=as+1;
            if current_draw(as) == 2 && current_draw(ar) == 2
                two_two=two_two+1;
                two_two_array=[two_two_array, next_draw(ar-1)];
                mode_two_two=mode(two_two_array); 
            end
         end
        
         while at < length(current_draw+1)
            at=at+1;
            au=au+1;
            if current_draw(au) == 2 && current_draw(at) == 3
                two_three=two_three+1;
                two_three_array=[two_three_array, next_draw(at-1)];
                mode_two_three=mode(two_three_array);
            end
         end
         
         while av < length(current_draw+1)
            av=av+1;
            aw=aw+1;
            if current_draw(aw) == 2 && current_draw(av) == 4
                two_four=two_four+1;
                two_four_array=[two_four_array, next_draw(av-1)];
                mode_two_four=mode(two_four_array);
            end
         end
         
         while ax < length(current_draw+1)
            ax=ax+1;
            ay=ay+1;
            if current_draw(ay) == 2 && current_draw(ax) == 5
                two_five=two_five+1;
                two_five_array=[two_five_array, next_draw(ax-1)];
                mode_two_five=mode(two_five_array); 
            end
         end
         
         while az < length(current_draw+1)
            az=az+1;
            ba=ba+1;
            if current_draw(ba) == 2 && current_draw(az) == 6
                two_six=two_six+1;
                two_six_array=[two_six_array, next_draw(az-1)];
                mode_two_six=mode(two_six_array); 
            end
         end
         
         while bb < length(current_draw+1)
            bb=bb+1;
            bc=bc+1;
            if current_draw(bc) == 2 && current_draw(bb) == 7
                two_seven=two_seven+1;
                two_seven_array=[two_seven_array, next_draw(bb-1)];
                mode_two_seven=mode(two_seven_array);
            end
         end
         
         while bd < length(current_draw+1)
            bd=bd+1;
            be=be+1;
            if current_draw(be) == 2 && current_draw(bd) == 8
                two_eight=two_eight+1;
                two_eight_array=[two_eight_array, next_draw(bd-1)];
                mode_two_eight=mode(two_eight_array); 
            end
         end
         
         while bf < length(current_draw+1)
            bf=bf+1;
            bg=bg+1;
            if current_draw(bg) == 2 && current_draw(bf) == 9
                two_nine=two_nine+1;
                two_nine_array=[two_nine_array, next_draw(bf-1)];
                mode_two_nine=mode(two_nine_array); 
            end
         end    
         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 3x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while bh < length(current_draw+1)
            bh=bh+1;
            bi=bi+1;
            if current_draw(bh) == 3 && current_draw(bi) == 0
                three_zero=three_zero+1;
                three_zero_array=[three_zero_array, next_draw(bh-1)];
                mode_three_zero=mode(three_zero_array); 
            end
         end


        while bj < length(current_draw+1)
            bj=bj+1;
            bk=bk+1;
            if current_draw(bk) == 3 && current_draw(bj) == 1
                three_one=three_one+1;
                three_one_array=[three_one_array, next_draw(bj-1)];
                mode_three_one=mode(three_one_array); 
            end
        end
        
        
         while bl < length(current_draw+1)
            bl=bl+1;
            bm=bm+1;
            if current_draw(bm) == 3 && current_draw(bl) == 2
                three_two=three_two+1;
                three_two_array=[three_two_array, next_draw(bl-1)];
                mode_three_two=mode(three_two_array); 
            end
         end
        
         while bn < length(current_draw+1)
            bn=bn+1;
            bo=bo+1;
            if current_draw(bo) == 3 && current_draw(bn) == 3
                three_three=three_three+1;
                three_three_array=[three_three_array, next_draw(bn-1)];
                mode_three_three=mode(three_three_array); 
            end
         end
         
         while bp < length(current_draw+1)
            bp=bp+1;
            bq=bq+1;
            if current_draw(bq) == 3 && current_draw(bp) == 4
                three_four=three_four+1;
                three_four_array=[three_four_array, next_draw(bp-1)];
                mode_three_four=mode(three_four_array); 
            end
         end
         
         while br < length(current_draw+1)
            br=br+1;
            bs=bs+1;
            if current_draw(bs) == 3 && current_draw(br) == 5
                three_five=three_five+1;
                three_five_array=[three_five_array, next_draw(br-1)];
                mode_three_five=mode(three_five_array);
            end
         end
         
         while bt < length(current_draw+1)
            bt=bt+1;
            bu=bu+1;
            if current_draw(bu) == 3 && current_draw(bt) == 6
                three_six=three_six+1;
                three_six_array=[three_six_array, next_draw(bt-1)];
                mode_three_six=mode(three_six_array); 
            end
         end
         
         while bv < length(current_draw+1)
            bv=bv+1;
            bw=bw+1;
            if current_draw(bw) == 3 && current_draw(bv) == 7
                three_seven=three_seven+1;
                three_seven_array=[three_seven_array, next_draw(bv-1)];
                mode_three_seven=mode(three_seven_array);
            end
         end
         
         while bx < length(current_draw+1)
            bx=bx+1;
            by=by+1;
            if current_draw(by) == 3 && current_draw(bx) == 8
                three_eight=three_eight+1;
                three_eight_array=[three_eight_array, next_draw(bx-1)];
                mode_three_eight=mode(three_eight_array); 
            end
         end
         
         while bz < length(current_draw+1)
            bz=bz+1;
            ca=ca+1;
            if current_draw(ca) == 3 && current_draw(bz) == 9
                three_nine=three_nine+1;
                three_nine_array=[three_nine_array, next_draw(bz-1)];
                mode_three_nine=mode(three_nine_array); 
            end
         end 
         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        All 2-Digit Combinations of 4x                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         while cb < length(current_draw+1)
            cb=cb+1;
            cc=cc+1;
            if current_draw(cb) == 4 && current_draw(cc) == 0
                four_zero=four_zero+1;
                four_zero_array=[four_zero_array, next_draw(cb-1)];
                mode_four_zero=mode(four_zero_array); 
            end
         end


        while cd < length(current_draw+1)
            cd=cd+1;
            ce=ce+1;
            if current_draw(ce) == 4 && current_draw(cd) == 1
                four_one=four_one+1;
                four_one_array=[four_one_array, next_draw(cd-1)];
                mode_four_one=mode(four_one_array); 
            end
        end
        
        
         while cf < length(current_draw+1)
            cf=cf+1;
            cg=cg+1;
            if current_draw(cg) == 4 && current_draw(cf) == 2
                four_two=four_two+1;
                four_two_array=[four_two_array, next_draw(cf-1)];
                mode_four_two=mode(four_two_array); 
            end
         end
        
         while ch < length(current_draw+1)
            ch=ch+1;
            ci=ci+1;
            if current_draw(ci) == 4 && current_draw(ch) == 3
                four_three=four_three+1;
                four_three_array=[four_three_array, next_draw(ch-1)];
                mode_four_three=mode(four_three_array); 
            end
         end
         
         while cj < length(current_draw+1)
            cj=cj+1;
            ck=ck+1;
            if current_draw(ck) == 4 && current_draw(cj) == 4
                four_four=four_four+1;
                four_four_array=[four_four_array, next_draw(cj-1)];
                mode_four_four=mode(four_four_array); 
            end
         end
         
         while cl < length(current_draw+1)
            cl=cl+1;
            cm=cm+1;
            if current_draw(cm) == 4 && current_draw(cl) == 5
                four_five=four_five+1;
                four_five_array=[four_five_array, next_draw(cl-1)];
                mode_four_five=mode(four_five_array); 
            end
         end
         
         while cn < length(current_draw+1)
            cn=cn+1;
            co=co+1;
            if current_draw(co) == 4 && current_draw(cn) == 6
                four_six=four_six+1;
                four_six_array=[four_six_array, next_draw(cn-1)];
                mode_four_six=mode(four_six_array); 
            end
         end
         
         while cp < length(current_draw+1)
            cp=cp+1;
            cq=cq+1;
            if current_draw(cq) == 4 && current_draw(cp) == 7
                four_seven=four_seven+1;
                four_seven_array=[four_seven_array, next_draw(cp-1)];
                mode_four_seven=mode(four_seven_array); 
            end
         end
         
         while cr < length(current_draw+1)
            cr=cr+1;
            cs=cs+1;
            if current_draw(cs) == 4 && current_draw(cr) == 8
                four_eight=four_eight+1;
                four_eight_array=[four_eight_array, next_draw(cr-1)];
                mode_four_eight=mode(four_eight_array); 
            end
         end
         
         while ct < length(current_draw+1)
            ct=ct+1;
            cu=cu+1;
            if current_draw(cu) == 4 && current_draw(ct) == 9
                four_nine=four_nine+1;
                four_nine_array=[four_nine_array, next_draw(ct-1)];
                mode_four_nine=mode(four_nine_array); 
            end
         end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 5x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while cv < length(current_draw+1)
            cv=cv+1;
            cw=cw+1;
            if current_draw(cv) == 5 && current_draw(cw) == 0
                five_zero=five_zero+1;
                five_zero_array=[five_zero_array, next_draw(cv-1)];
                mode_five_zero=mode(five_zero_array); 
            end
         end


        while cx < length(current_draw+1)
            cx=cx+1;
            cy=cy+1;
            if current_draw(cy) == 5 && current_draw(cx) == 1
                five_one=five_one+1;
                five_one_array=[five_one_array, next_draw(cx-1)];
                mode_five_one=mode(five_one_array); 
            end
        end
        
        
         while cz < length(current_draw+1)
            cz=cz+1;
            da=da+1;
            if current_draw(da) == 5 && current_draw(cz) == 2
                five_two=five_two+1;
                five_two_array=[five_two_array, next_draw(cz-1)];
                mode_five_two=mode(five_two_array); 
            end
         end
        
         while db < length(current_draw+1)
            db=db+1;
            dc=dc+1;
            if current_draw(dc) == 5 && current_draw(db) == 3
                five_three=five_three+1;
                five_three_array=[five_three_array, next_draw(db-1)];
                mode_five_three=mode(five_three_array); 
            end
         end
         
         while dd < length(current_draw+1)
            dd=dd+1;
            de=de+1;
            if current_draw(de) == 5 && current_draw(dd) == 4
                five_four=five_four+1;
                five_four_array=[five_four_array, next_draw(dd-1)];
                mode_five_four=mode(five_four_array);
            end
         end
         
         while df < length(current_draw+1)
            df=df+1;
            dg=dg+1;
            if current_draw(dg) == 5 && current_draw(df) == 5
                five_five=five_five+1;
                five_five_array=[five_five_array, next_draw(df-1)];
                mode_five_five=mode(five_five_array); 
            end
         end
         
         while dh < length(current_draw+1)
            dh=dh+1;
            di=di+1;
            if current_draw(di) == 5 && current_draw(dh) == 6
                five_six=five_six+1;
                five_six_array=[five_six_array, next_draw(dh-1)];
                mode_five_six=mode(five_six_array); 
            end
         end
         
         while dj < length(current_draw+1)
            dj=dj+1;
            dk=dk+1;
            if current_draw(dk) == 5 && current_draw(dj) == 7
                five_seven=five_seven+1;
                five_seven_array=[five_seven_array, next_draw(dj-1)];
                mode_five_seven=mode(five_seven_array); 
            end
         end
         
         while dl < length(current_draw+1)
            dl=dl+1;
            dm=dm+1;
            if current_draw(dm) == 5 && current_draw(dl) == 8
                five_eight=five_eight+1;
                five_eight_array=[five_eight_array, next_draw(dl-1)];
                mode_five_eight=mode(five_eight_array); 
            end
         end
         
         while dn < length(current_draw+1)
            dn=dn+1;
            do=do+1;
            if current_draw(do) == 5 && current_draw(dn) == 9
                five_nine=five_nine+1;
                five_nine_array=[five_nine_array, next_draw(dn-1)];
                mode_five_nine=mode(five_nine_array); 
            end
         end    
         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 6x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while dp < length(current_draw+1)
            dp=dp+1;
            dq=dq+1;
            if current_draw(dp) == 6 && current_draw(dq) == 0
                six_zero=six_zero+1;
                six_zero_array=[six_zero_array, next_draw(dp-1)];
                mode_six_zero=mode(six_zero_array); 
            end
         end


        while dr < length(current_draw+1)
            dr=dr+1;
            ds=ds+1;
            if current_draw(ds) == 6 && current_draw(dr) == 1
                six_one=six_one+1;
                six_one_array=[six_one_array, next_draw(dr-1)];
                mode_six_one=mode(six_one_array);
            end
        end
        
        
         while dt < length(current_draw+1)
            dt=dt+1;
            du=du+1;
            if current_draw(du) == 6 && current_draw(dt) == 2
                six_two=six_two+1;
                six_two_array=[six_two_array, next_draw(dt-1)];
                mode_six_two=mode(six_two_array);
            end
         end
        
         while dv < length(current_draw+1)
            dv=dv+1;
            dw=dw+1;
            if current_draw(dw) == 6 && current_draw(dv) == 3
                six_three=six_three+1;
                six_three_array=[six_three_array, next_draw(dv-1)];
                mode_six_three=mode(six_three_array); 
            end
         end
         
         while dx < length(current_draw+1)
            dx=dx+1;
            dy=dy+1;
            if current_draw(dy) == 6 && current_draw(dx) == 4
                six_four=six_four+1;
                six_four_array=[six_four_array, next_draw(dx-1)];
                mode_six_four=mode(six_four_array); 
            end
         end
         
         while dz < length(current_draw+1)
            dz=dz+1;
            ea=ea+1;
            if current_draw(ea) == 6 && current_draw(dz) == 5
                six_five=six_five+1;
                six_five_array=[six_five_array, next_draw(dz-1)];
                mode_six_five=mode(six_five_array); 
            end
         end
         
         while eb < length(current_draw+1)
            eb=eb+1;
            ec=ec+1;
            if current_draw(ec) == 6 && current_draw(eb) == 6
                six_six=six_six+1;
                six_six_array=[six_six_array, next_draw(eb-1)];
                mode_six_six=mode(six_six_array); 
            end
         end
         
         while ed < length(current_draw+1)
            ed=ed+1;
            ee=ee+1;
            if current_draw(ee) == 6 && current_draw(ed) == 7
                six_seven=six_seven+1;
                six_seven_array=[six_seven_array, next_draw(ed-1)];
                mode_six_seven=mode(six_seven_array); 
            end
         end
         
         while ef < length(current_draw+1)
            ef=ef+1;
            eg=eg+1;
            if current_draw(eg) == 6 && current_draw(ef) == 8
                six_eight=six_eight+1;
                six_eight_array=[six_eight_array, next_draw(ef-1)];
                mode_six_eight=mode(six_eight_array); 
            end
         end
         
         while eh < length(current_draw+1)
            eh=eh+1;
            ei=ei+1;
            if current_draw(ei) == 6 && current_draw(eh) == 9
                six_nine=six_nine+1;
                six_nine_array=[six_nine_array, next_draw(eh-1)];
                mode_six_nine=mode(six_nine_array); 
            end
         end
         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           All 2-Digit Combinations of 7x                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         while ej < length(current_draw+1)
            ej=ej+1;
            ek=ek+1;
            if current_draw(ej) == 7 && current_draw(ek) == 0
                seven_zero=seven_zero+1;
                seven_zero_array=[seven_zero_array, next_draw(ej-1)];
                mode_seven_zero=mode(seven_zero_array); 
            end
         end


        while el < length(current_draw+1)
            el=el+1;
            em=em+1;
            if current_draw(em) == 7 && current_draw(el) == 1
                seven_one=seven_one+1;
                seven_one_array=[seven_one_array, next_draw(el-1)];
                mode_seven_one=mode(seven_one_array); 
            end
        end
        
        
         while en < length(current_draw+1)
            en=en+1;
            eo=eo+1;
            if current_draw(eo) == 7 && current_draw(en) == 2
                seven_two=seven_two+1;
                seven_two_array=[seven_two_array, next_draw(en-1)];
                mode_seven_two=mode(seven_two_array); 
            end
         end
        
         while ep < length(current_draw+1)
            ep=ep+1;
            eq=eq+1;
            if current_draw(eq) == 7 && current_draw(ep) == 3
                seven_three=seven_three+1;
                seven_three_array=[seven_three_array, next_draw(ep-1)];
                mode_seven_three=mode(seven_three_array); 
            end
         end
         
         while er < length(current_draw+1)
            er=er+1;
            es=es+1;
            if current_draw(es) == 7 && current_draw(er) == 4
                seven_four=seven_four+1;
                seven_four_array=[seven_four_array, next_draw(er-1)];
                mode_seven_four=mode(seven_four_array); 
            end
         end
         
         while et < length(current_draw+1)
            et=et+1;
            eu=eu+1;
            if current_draw(eu) == 7 && current_draw(et) == 5
                seven_five=seven_five+1;
                seven_five_array=[seven_five_array, next_draw(et-1)];
                mode_seven_five=mode(seven_five_array); 
            end
         end
         
         while ev < length(current_draw+1)
            ev=ev+1;
            ew=ew+1;
            if current_draw(ew) == 7 && current_draw(ev) == 6
                seven_six=seven_six+1;
                seven_six_array=[seven_six_array, next_draw(ev-1)];
                mode_seven_six=mode(seven_six_array);
            end
         end
         
         while ex < length(current_draw+1)
            ex=ex+1;
            ey=ey+1;
            if current_draw(ey) == 7 && current_draw(ex) == 7
                seven_seven=seven_seven+1;
                seven_seven_array=[seven_seven_array, next_draw(ex-1)];
                mode_seven_seven=mode(seven_seven_array); 
            end
         end
         
         while ez < length(current_draw+1)
            ez=ez+1;
            fa=fa+1;
            if current_draw(fa) == 7 && current_draw(ez) == 8
                seven_eight=seven_eight+1;
                seven_eight_array=[seven_eight_array, next_draw(ez-1)];
                mode_seven_eight=mode(seven_eight_array); 
            end
         end
         
         while fb < length(current_draw+1)
            fb=fb+1;
            fc=fc+1;
            if current_draw(fc) == 7 && current_draw(fb) == 9
                seven_nine=seven_nine+1;
                seven_nine_array=[seven_nine_array, next_draw(fb-1)];
                mode_seven_nine=mode(seven_nine_array); 
            end
         end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 8x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while fd < length(current_draw+1)
            fd=fd+1;
            fe=fe+1;
            if current_draw(fd) == 8 && current_draw(fe) == 0
                eight_zero=eight_zero+1;
                eight_zero_array=[eight_zero_array, next_draw(fd-1)];
                mode_eight_zero=mode(eight_zero_array); 
            end
         end


        while ff < length(current_draw+1)
            ff=ff+1;
            fg=fg+1;
            if current_draw(fg) == 8 && current_draw(ff) == 1
                eight_one=eight_one+1;
                eight_one_array=[eight_one_array, next_draw(ff-1)];
                mode_eight_one=mode(eight_one_array); 
            end
        end
        
        
         while fh < length(current_draw+1)
            fh=fh+1;
            fi=fi+1;
            if current_draw(fi) == 8 && current_draw(fh) == 2
                eight_two=eight_two+1;
                eight_two_array=[eight_two_array, next_draw(fh-1)];
                mode_eight_two=mode(eight_two_array);
            end
         end
        
         while fj < length(current_draw+1)
            fj=fj+1;
            fk=fk+1;
            if current_draw(fk) == 8 && current_draw(fj) == 3
                eight_three=eight_three+1;
                eight_three_array=[eight_three_array, next_draw(fj-1)];
                mode_eight_three=mode(eight_three_array); 
            end
         end
         
         while fl < length(current_draw+1)
            fl=fl+1;
            fm=fm+1;
            if current_draw(fm) == 8 && current_draw(fl) == 4
                eight_four=eight_four+1;
                eight_four_array=[eight_four_array, next_draw(fl-1)];
                mode_eight_four=mode(eight_four_array); 
            end
         end
         
         while fn < length(current_draw+1)
            fn=fn+1;
            fo=fo+1;
            if current_draw(fo) == 8 && current_draw(fn) == 5
                eight_five=eight_five+1;
                eight_five_array=[eight_five_array, next_draw(fn-1)];
                mode_eight_five=mode(eight_five_array);
            end
         end
         
         while fp < length(current_draw+1)
            fp=fp+1;
            fq=fq+1;
            if current_draw(fq) == 8 && current_draw(fp) == 6
                eight_six=eight_six+1;
                eight_six_array=[eight_six_array, next_draw(fp-1)];
                mode_eight_six=mode(eight_six_array); 
            end
         end
         
         while fr < length(current_draw+1)
            fr=fr+1;
            fs=fs+1;
            if current_draw(fs) == 8 && current_draw(fr) == 7
                eight_seven=eight_seven+1;
                eight_seven_array=[eight_seven_array, next_draw(fr-1)];
                mode_eight_seven=mode(eight_seven_array);
            end
         end
         
         while ft < length(current_draw+1)
            ft=ft+1;
            fu=fu+1;
            if current_draw(fu) == 8 && current_draw(ft) == 8
                eight_eight=eight_eight+1;
                eight_eight_array=[eight_eight_array, next_draw(ft-1)];
                mode_eight_eight=mode(eight_eight_array); 
            end
         end
         
         while fv < length(current_draw+1)
            fv=fv+1;
            fw=fw+1;
            if current_draw(fw) == 8 && current_draw(fv) == 9
                eight_nine=eight_nine+1;
                eight_nine_array=[eight_nine_array, next_draw(fv-1)];
                mode_eight_nine=mode(eight_nine_array); 
            end
         end    
         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 9x                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
         while fx < length(current_draw+1)
            fx=fx+1;
            fy=fy+1;
            if current_draw(fx) == 9 && current_draw(fy) == 0
                nine_zero=nine_zero+1;
               nine_zero_array=[nine_zero_array, next_draw(fx-1)];
                mode_nine_zero=mode(nine_zero_array); 
            end
         end


        while fz < length(current_draw+1)
            fz=fz+1;
            ga=ga+1;
            if current_draw(ga) == 9 && current_draw(fz) == 1
                nine_one=nine_one+1;
                nine_one_array=[nine_one_array, next_draw(fz-1)];
                mode_nine_one=mode(nine_one_array); 
            end
        end
        
        
         while gb < length(current_draw+1)
            gb=gb+1;
            gc=gc+1;
            if current_draw(gc) == 9 && current_draw(gb) == 2
                nine_two=nine_two+1;
                nine_two_array=[nine_two_array, next_draw(gb-1)];
                mode_nine_two=mode(nine_two_array); 
            end
         end
        
         while gd < length(current_draw+1)
            gd=gd+1;
            ge=ge+1;
            if current_draw(ge) == 9 && current_draw(gd) == 3
                nine_three=nine_three+1;
                nine_three_array=[nine_three_array, next_draw(gd-1)];
                mode_nine_three=mode(nine_three_array);
            end
         end
         
         while gf < length(current_draw+1)
            gf=gf+1;
            gg=gg+1;
            if current_draw(gg) == 9 && current_draw(gf) == 4
                nine_four=nine_four+1;
                nine_four_array=[nine_four_array, next_draw(gf-1)];
                mode_nine_four=mode(nine_four_array); 
            end
         end
         
         while gh < length(current_draw+1)
            gh=gh+1;
            gi=gi+1;
            if current_draw(gi) == 9 && current_draw(gh) == 5
                nine_five=nine_five+1;
                nine_five_array=[nine_five_array, next_draw(gh-1)];
                mode_nine_five=mode(nine_five_array);
            end
         end
         
         while gj < length(current_draw+1)
            gj=gj+1;
            gk=gk+1;
            if current_draw(gk) == 9 && current_draw(gj) == 6
                nine_six=nine_six+1;
                nine_six_array=[nine_six_array, next_draw(gj-1)];
                mode_nine_six=mode(nine_six_array);
            end
         end
         
         while gl < length(current_draw+1)
            gl=gl+1;
            gm=gm+1;
            if current_draw(gm) == 9 && current_draw(gl) == 7
                nine_seven=nine_seven+1;
                nine_seven_array=[nine_seven_array, next_draw(gl-1)];
                mode_nine_seven=mode(nine_seven_array);
            end
         end
         
         while gn < length(current_draw+1)
            gn=gn+1;
            go=go+1;
            if current_draw(go) == 9 && current_draw(gn) == 8
                nine_eight=nine_eight+1;
                nine_eight_array=[nine_eight_array, next_draw(gn-1)];
                mode_nine_eight=mode(nine_eight_array); 
            end
         end
         
         while gp < length(current_draw+1)
            gp=gp+1;
            gq=gq+1;
            if current_draw(gq) == 9 && current_draw(gp) == 9
                nine_nine=nine_nine+1;
                nine_nine_array=[nine_nine_array, next_draw(gp-1)];
                mode_nine_nine=mode(nine_nine_array); 
            end
         end         

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
%                       Initial Testing....Disregard                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       All 2-Digit Combinations of 8                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         
        
            if current_draw(i) == 8 && current_draw(k) == 8
                double_eight=double_eight+1;
                double_eight_array=[double_eight_array, next_draw(i-1)];
                mean_eight=mean(double_eight_array); % average number of the array (between 1 and 0, can play either number)
                mode_eight_eight=mode(double_eight_array); % most frequent number occurring after the number 9
            end
            
        
         % Iterate through the array of numbers that occur after 9
        while j < length(current_draw+1)
            l=l+1;
            j=j+1;
            if current_draw(l) == 9 && current_draw(j) == 5
                nine_five=nine_five+1;
                nine_five_array=[nine_five_array, next_draw(j-1)];
                mean_nine_five=mean(nine_five_array);
                mode_nine_five=mode(nine_five_array); 
            end
        end
        
        % Iterate through the array of numbers that occur after 9
        while jk < length(current_draw+1)
            lm=lm+1;
            jk=jk+1;
            if current_draw(lm) == 9 && current_draw(jk) == 2
                nine_two=nine_two+1;
                nine_two_array=[nine_two_array next_draw(jk-1)];
                mean_nine_two=mean(nine_two_array); 
                mode_nine_two=mode(nine_two_array); 
            end
        end
    end
end
frequent_nums_array=[];
A=zeros(1,3);
Y=ones(1,3);
y=1:3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Find the second most frequent value in an array               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 if v(end-1) == 8 && v(end) == 5
    join_nums = union(v(end-1), v(end));
    for frequency = 1:3 % find tthe 1st, 2nd, and 3rd most frequent value
        sx = sort(eight_five_array); % sort the array
        ind = [true diff(sx)~=0]; % logical index of each new value in the sorted vector
        counts = diff(find([ind true])); % count of each unique value
        vals = sx(ind); % unique values
        [~, is] = sort(counts, 'descend'); % counts in decreasing order
        result = [frequent_nums_array vals(is(frequency))]; % value with the i-th largest count
        numbers(frequency)=result;
    end
        display(numbers);
 end


 %new_pair = union(v(end),numbers(1));
%for frequency = 1:3 % find tthe 1st, 2nd, and 3rd most frequent values
%sx = sort(zero_zero_array); % sort the array
%ind = [true diff(sx)~=0]; % logical index of each new value in the sorted vector
%counts = diff(find([ind true])); % count of each unique value
%vals = sx(ind); % unique values
%[~, is] = sort(counts, 'descend'); % counts in decreasing order
%result = [frequent_nums_array vals(is(frequency))]; % value with the i-th largest count
%numbers(frequency)=result;
%end
%display(numbers);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Build the Array                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Perhaps create counter variables for 8 and 5
% Assign each mode_x_x array an ID that corresponds with its number
% If it hits then it enters a switch statement that matchs with the
% variables above it, and calls the ID and its corresponding mode array.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if v(end-1) == 8 && v(end) == 5
    fprintf('%s %.0f %.0f\n', 'The last two drawn numbers were', [v(end-1) v(end)]);
    mew=mode_eight_five;
    new_pair = union(v(end),mew(1));
    next_new_pair = union(v(end),new_pair(2));
    fprintf('%s %.0f %.0f %s %.0f\n', 'The new numbers to handle:', new_pair);
 
switch(mew)
    case {5 6}
       new_array = [v,new_pair(2)]; % add the new value to the existing array
       alternate_new_array = [v,next_new_pair(2)];
       for frequency = 1:3 % find the 1st, 2nd, and 3rd most frequent values
           sx = sort(five_six_array); % sort the array
           ind = [true diff(sx)~=0]; % logical index of each new value in the sorted vector
           counts = diff(find([ind true])); % count of each unique value
           vals = sx(ind); % unique values
           [~, is] = sort(counts, 'descend'); % counts in decreasing order
           result = [frequent_nums_array vals(is(frequency))]; % value with the i-th largest count
           numbers(frequency)=result;
       end
        display(numbers);
        new_pair2 = union(v(end),numbers(1));
        
end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Numbers to Play                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Statistics                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      Calculates Runtime of Program                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%