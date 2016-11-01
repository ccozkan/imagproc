sig=2;
[X,Y] = meshgrid(-1:sig:1, -1:sig:1);                                
A = X .* exp(-(X.^2 + Y.^2)/(2*sig^2))*(2*pi*sig^2)^(-1);                                        
surf(A)