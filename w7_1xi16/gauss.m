clc
clear all

sig=2.5;
S=25;
I=im2double(rgb2gray(imread('Penguins.jpg')));


for i=-floor(S/2):1:floor(S/2)
    for j=-floor(S/2):1:floor(S/2)
        Gc(i+floor(S/2)+1,j+floor(S/2)+1)=(2*pi*sig^2)^(-1)*exp(-(i^2+j^2)/(2*sig^2));
    end
end
Gc=Gc/sum(Gc(:));
figure
surf(Gc);
figure
imshow([I conv2(I,Gc,'same')]);


