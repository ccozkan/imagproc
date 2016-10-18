I=imread('Cropped_Small_Red_Rose.JPG');
I=im2double(I);
%imshow(I);

Ihsv=rgb2hsv(I);
imshow([Ihsv(:,:,1) Ihsv(:,:,2) Ihsv(:,:,3)]);

[M N K]=size(I);
for i=1:M
    for j=1:N
        if(Ihsv(i,j,1)>0.075 && Ihsv(i,j,3)<.925 || Ihsv(i,j,2)<.065 )

              I(i,j,:)=0.5;
        else
            
        end
    
    end
end

% % % for i=1:M
% % %     for j=1:N
% % %         if(Ihsv(i,j,1)~=0 && Ihsv(i,j,1)~=1 )
% % % 
% % %             if I(i,j,3)~=1
% % %             else
% % %                 I(i,j,:)=0;
% % %             end
% % %               I(i,j,:)=0;
% % %         else
% % %             
% % %         end
% % %     
% % %     end
% % % end
imshow(I);