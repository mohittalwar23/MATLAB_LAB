% Experiment 1
% generating elementary digital sequences using matlab

clc
close all
clear all

n=-10:1:10;
type_of_sqn=1; %for unit impulse
[dig_sqn] = digital_sqn_gen(n,type_of_sqn);
stem(n,dig_sqn);

type_of_sqn=2; %for unit step
[dig_sqn] = digital_sqn_gen(n,type_of_sqn);
stem(n,dig_sqn);

