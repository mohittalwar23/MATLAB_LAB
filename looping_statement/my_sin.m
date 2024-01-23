function [temp] = my_sin(x)
%OUR SINE FUNCTION
no_of_terms=5;
temp=0;

for ii=1:1:no_of_terms
    temp=temp+(-1)^(ii+1)*x^(2*ii-1)/fract_x(2*ii-1);
    
end

end

