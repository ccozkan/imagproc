% I=zeros(100,100);
I=(zeros(100,100))
I=uint8(I);
I=I+255;
B=I;
B=(B-5);
% imshow([I B]);

I=imread('Penguins.jpg');
I=rgb2gray(I);
B=abs(255-I);
B=(255-I);
% imshow([I B]);

I=im2double(I); %log uint8'e islemiyor
c=1;
B=c*log(1+I);
% imshow([I B]);


% % % %%gama correction
% % %  tam doğruluğu şüpheli kontrol et

% % % I=im2double(I); %log uint8'e islemiyor
% % % c=1;
% % % B=c*(I).^5;
% % % B2=c*(I).^(1/5);
% % % C=c*(I).^(1);
% % % 
% % % imshow([B B2 C [B B2] I])

I=imread('Jellyfish.jpg');
I=rgb2gray(I);
[M N K]=size(I)
for i=1:M
    for j=1:N
       if I(i,j)>=40
           if I(i,j)<=160
               I2(i,j)=I(i,j);
           end
       else
           I2(i,j)=0;
        end
    
    end
end

imshow([I I2]);


for i=1:M
    for j=1:N
       if I(i,j)>=40
           if I(i,j)<=160
               I3(i,j)=1;
           end
       else
           I3(i,j)=0;
        end
        
    end
end
imshow([I3]);
