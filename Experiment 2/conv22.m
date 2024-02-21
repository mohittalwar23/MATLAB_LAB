% performing linear convolution of finite duratiom

clear all
clc
alpha=0.7;
n=0:1:50;
A=10;
M=1;
N=6; 
type_of_sqn=4;
len_n=length(n);

h_n=[1 -1];
g_n=digital_sqn_gen(n,type_of_sqn, alpha, A, M, N);

l1=length(h_n);
l2=length(g_n);
l3=l2+l1-1;

h1=[h_n zeros(1,l2)];
g1=[g_n zeros(1,l1)];
y=zeros(1,l3);

for i=1:l3
    y(i)=0;
    for j=1:l1
        if (i-j+1>0)
            
            y(i)=y(i)+h1(j)*g1(i-j+1);
        end
    end
    n2(i)=i-1;
end

y1=conv(h_n,g_n);


subplot(2,1,1),stem(n2,y);
subplot(2,1,2),stem(n2,y1);



