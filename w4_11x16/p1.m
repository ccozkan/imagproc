%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Histogram         %


I=imread('Desert.jpg');
I=rgb2gray(I);

[M N]=size(I);
B=zeros(1,256);

for i=1:M
    for j=1:N
      a=I(i,j);
      
      B(1,a+1)=B(1,a+1)+1; % çünkü matris indislenmesi min 1
        
    end
end

% % bar(B);
% % axis([1 256 0 max(B)]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cumulative distribution function %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[M N]=size(B);
cmfn=zeros(M,N);


tot=0;
for j=1:N

    tot=B(1,j)+tot
    cmfn(1,j)=tot+B(1,j);
    
end
% % bar(cmf);
%{
alternative method for cumulative dist func.
%}

c=zeros(1,256);

for i=1:256
    for j=1:i
        c(1,i)=c(1,i)+B(1,j);
    end
end
% alt. method over. %

%---------------------------%
% Histogram Equalizitaion   %
%---------------------------%

[M N]=size(I);
Ieq=zeros(M,N);

for i=1:M
    for j=1:N
      a=I(i,j);
      Ieq(i,j)=c(1,a+1)./(M*N)*255;
             
    end
end


% % % imshow([I Ieq]);

% % % % % [M N]=size(Ieq)
% % % % % Beq=zeros(M,N);
% % % % % for i=1:M
% % % % %     for j=1:N
% % % % %       
% % % % %       a=Ieq(i,j);
% % % % %       Beq(1,a+1)=Beq(1,a+1)+1; 
% % % % %         
% % % % %     end
% % % % % end
