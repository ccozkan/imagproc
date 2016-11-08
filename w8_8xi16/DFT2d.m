function [ output ] = DFT2d( input )

[M N]=size(input);
output=zeros(M,N);

for m=0:M-1
    for n=0:N-1
        s=0;
            for u=0:N-1
                
                for v=0:N-1
                    
                    s=s+input(m+1,n+1)*exp(-2i*pi*((u*m)/M+(v*n)/N));
                    
                end
                
            end
        output(u+1,v+1)=s;

    end
    
end