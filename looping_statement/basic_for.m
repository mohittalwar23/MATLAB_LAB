clc
clear all
close all
% 2 type of looping statements
% ctr + r se comment

for ii=1:1:10
    x(ii)=2*ii;
    x(ii)
    pause
   
end
% matlab indexing doesnt start from 0

for jj=0:1:10
    y(jj+1)=2*jj;
    y(jj+1)
    pause
    
end
% inbuilt function length
length_of_vector=length(y)
% inbuilt function mod
mod_of_length_of_vector=mod(length_of_vector,2)

if (mod_of_length_of_vector==0)
    display("length is even");
else
    display("length is odd");
    middle_index=(length_of_vector+1)/2
    display(middle_index);
end

% cos theta log x e ki power x 
    

