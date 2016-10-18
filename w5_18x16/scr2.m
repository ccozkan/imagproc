%im2gray scripti

I=imread('Lighthouse.jpg');
I=im2double(I);
imshow([I(:,:,1) I(:,:,2) I(:,:,3)]);
[M N K]=size(I);

ave_grayval=zeros(M,N);

ave_grayval=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3;
temp=zeros(M,N);

% % for i=1:K
% %    temp(:,:)=ave_grayval(:,:,i)+temp(:,:);
% %  end
% %  ave_grayval=temp

I=imread('Jellyfish.jpg');
I=im2double(I);
imshow([I(:,:,1) I(:,:,2) I(:,:,3)]);
