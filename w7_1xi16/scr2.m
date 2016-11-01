

I=im2double(rgb2gray(imread('Penguins.jpg')));
[M N]=size(I);

is=sign(I(M/2,N/2));
h=[0 1 0;1 -4 1;0 1 0]
Isharp=I+conv2(I,h,'same')*is
h=fspecial('laplacian')

imshow([I Isharp]);