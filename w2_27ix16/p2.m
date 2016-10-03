I=imread('Koala.jpg'); 
I=rgb2gray(I);,
I=im2double(I);
[M N]=size(I);
B=zeros(M,N);

for i=1:M
    for j=1:N
      B(i,j)=I(i,N-j+1);
    end
end

imshow([I B]);
