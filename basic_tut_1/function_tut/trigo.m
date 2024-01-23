function [sin_theta, cos_theta, tan_theta] = trigo(p,b)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
h=sqrt(p^2 + b^2);
sin_theta=p/h;
cos_theta=b/h;
tan_theta=p/b;

end

