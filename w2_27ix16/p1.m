%I=zeros(640,480);
%imshow(I);

I=zeros(480,640);
% % % 70x50 BIR DIKDORTGEN CIZDIRME
% % for i=100:170
% %     for j=120:170
% %         I(i,j)=1;
% %     end
% % end
% % imshow(I);


% % % 200,200 NOKTASI ETRAFINDA GRADYEN OLARAK AZALAN BEYAZ BIR DAIRE CIZDIRME
% % for i=1:480
% %     for j=1:640
% %         if (200-i)^2+(200-j)^2<=100^2
% %             R=sqrt((200-i)^2+(200-j)^2);
% %         I(i,j)=1-(R/100);
% %         end
% %     end
% % end
% % imshow(I);


% % I=zeros(400,400);
% % Ie=diagmx(400,400);
% % If=I+Ie;
% % imshow(If)
% for i=1:400
%     for j=1:400
%         if (i)^2+(j)^2==^2
%             R=sqrt((200-i)^2+(200-j)^2);
%         I(i,j)=1-(R/100);
%         end
%     end
% end

[M N K]=size(I)

I=zeros(400,400);
[M N K]=size(I)
for i=1:400
    for j=1:400
        if (i)==j
        I(i,j)=1;
        end
    end
end
B=zeros(400,400)

for i=1:400
    for j=1:400
       B(i,j)=I(i,M-j+1);
    
    end
end
imshow(B)

imshow(I+B)
