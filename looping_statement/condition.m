function [y2] = condition(x)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
if (x<-5)
    display("000");
elseif (x>=-5 && x<-4)
    display("001")
elseif (x>=-4 && x<-3)
    display("010")
elseif (x>=-3 && x<-2)
    display("011")
else
    display("111")
end

