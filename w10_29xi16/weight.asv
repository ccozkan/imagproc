function [ retval ] = weight( B,L )

h(1,:)=B(1,:);


for i =1:length(B)
    r(i,1)=i;
end

weight_b=sum(h(1,1:L+1)/sum(h(1,:)));



mean_b=(h(1,1:L+1)*r(1:L+1,1))/sum(h(1,1:L+1));



mean_w=(h(1,L+1:length(B)-1)*r(L+1:length(B)-1,1))/sum(1,L+1:length(L)-1);


retval=weight_b*(1-weight_b)*(mean_b-mean_w)^2;
end

