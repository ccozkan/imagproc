%%
I=im2double(rgb2gray(imread('Penguins.jpg')));

F=fft2(I);
Fs=fftshift(F);

[M N]=size(Fs);
H=zeros(M,N);

S=50;
for i=M/2-S:M/2+S
    for j=N/2-S:N/2+S
        
        if ((M)/2-i)^2+((N)/2-j)^2<=S^2
            R=sqrt(((M)/2-i)^2+((N)/2-j));

            H(i,j)=1-(R/S);
        end
    end

end

H=1-H;
imshow(H);


% Fs=Fs.*abs(ones(M,N)-H);
Fs=Fs.*H;
    
IFs=ifftshift(Fs);
G=real(ifft2(IFs));

imshow([I G]);
