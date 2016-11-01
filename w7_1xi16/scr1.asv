I=imread('Penguins.jpg');
I=rgb2gray(I);
I= im2double(I);


S= 23;

h = ones(S)/(S*S);


G = conv2(I,h,'same');

imshow([I G]);
