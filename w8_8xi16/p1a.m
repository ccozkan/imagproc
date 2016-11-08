% FOUERÝER TRANSFORM%
% given N and X:x0,x1,x2,...xn-1 find Disc.F.T.

clc
clear all

x=[0 .5 1 .5 0 -.5 -1 -.5 0];

N=length(x);
dft2=0;
for K=0:1:(N-1)
    temp=0;
    for n=0:1:(N-1)
       temp=temp+x(n+1)*(cos(n)+i*sin(n))^(K*2*pi*n/N);%%burda mat. hatasý var
        
    end
   dft(K+1)=temp;
end
