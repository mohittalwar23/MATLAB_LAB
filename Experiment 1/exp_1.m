% Experiment 1
% generating elementary digital sequences using matlab

clc
close all
clear all
alpha=0.7;
n=-50:1:50;
A=1;
M=1;
N=6;
type_of_sqn=1; %for unit impulse
x1 = digital_sqn_gen(n,type_of_sqn);


type_of_sqn=2; %for unit step
x2 = digital_sqn_gen(n,type_of_sqn);

type_of_sqn=3; %exponential decay
x3 = digital_sqn_gen(n,type_of_sqn,alpha);

type_of_sqn=4; %discrete cosine
x4 = digital_sqn_gen(n,type_of_sqn,alpha,A,M,N);

type_of_sqn=5; %gate
x5 = digital_sqn_gen(n,type_of_sqn,alpha,A,M,N);

% energyx=sum(abs(x3).^2);
[energyexp] = enrg(x3);
[energygate] = enrg(x5);


stem(n,x1);
pause
stem(n,x2);
pause
stem(n,x3);
pause
stem(n,x4);
pause
stem(n,x5)

