function [ output ] = DFT_2d( input )

[M N]=size(input);


for m=0:M-1
    for n:N-1
            for u=0:N-1
                for v=0:N-1
                    
                    s=s+input(m,n)*exp(-2i*pi*((u*m)/M+(v*n)/N);
                    
                end
                output(u+1,v+1)=s;
            end
        

    end
    
end