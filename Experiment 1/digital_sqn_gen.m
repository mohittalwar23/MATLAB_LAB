function [dig_sqn] = digital_sqn_gen(n,type_of_sqn, alpha, A, M, N)
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
    
elseif(type_of_sqn==3)  %exponential decay
    for ii=1:length(n)
        if (n(ii)>=0)
            dig_sqn(ii) = alpha^n(ii);
        else
            dig_sqn(ii)=0;
        end
            
    end
    
elseif(type_of_sqn==4)  %cosine
    for ii=1:length(n)
        dig_sqn(ii) = A*cos(2*pi*(M/N)*n(ii));
          
    end
    
elseif(type_of_sqn==5)  %gate
    for ii=1:1:length(n)
        if(n(ii)>=-N && n(ii)<=N)
          dig_sqn(ii)=1;
        else
          dig_sqn(ii)=0;
       
        end
          
    end
end
        
end

