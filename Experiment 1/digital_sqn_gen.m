function [dig_sqn] = digital_sqn_gen(n,type_of_sqn)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
if(type_of_sqn==1)  %unit impulse
    for ii=1:length(n)
        if (n(ii)==0)
            dig_sqn(ii)=1;
        else
            dig_sqn(ii)=0;
        end
            
    end
    
elseif(type_of_sqn==2)  %unit step
    for ii=1:length(n)
        if (n(ii)>=0)
            dig_sqn(ii)=1;
        else
            dig_sqn(ii)=0;
        end
            
    end
end
        
end

