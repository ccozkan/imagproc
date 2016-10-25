I=zeros(400,400);
I(100:300,100:300)=1;
% imshow(I);
I=imread('giraffe.jpg');
I=im2double(rgb2gray(I));

hx= [ -1 0 1;
      -1 0 1;
      -1 0 1 ];
  hy=hx'
  Ix=abs(conv2(I,hx,'same'));
  Iy=abs(conv2(I,hy,'same'));
  imshow([Ix Iy Ix+Iy (Ix+Iy)/2])