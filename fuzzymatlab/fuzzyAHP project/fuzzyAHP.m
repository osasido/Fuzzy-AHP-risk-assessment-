% ----------------------------------------------------------------------- %
% This function is built in order to 
% find the weights of the criteria
% ----------------------------------------------------------------------- %
% INPUTS
%           P: Pairwise Matrix 
%           a: The index of optimismm
% OUTPUTS
%           S: The value of fuzzy synthetic extent
%           W: Weights
%           CR: Consistency Ratio
% ----------------------------------------------------------------------- %
% AUTHORS
%           Ojeaga Trust
%           
% lAST UPDATE
%           September 09, 2023
% ----------------------------------------------------------------------- %
function [S,W,lambda,CI,CR,Er]=fuzzyAHP(P,a)
nn=size(P); n=nn(1);
B=zeros(n,3); C=B; t=0;
[m]=RI(n); % Random Index
for i=1:n
    k=1;
    for j=1:n
        B(i,1)=B(i,1)+P(i,k);
        B(i,2)=B(i,2)+P(i,k+1);
        B(i,3)=B(i,3)+P(i,k+2);
        C(i,1)=C(i,1)+sum(P(:,k+2));
        C(i,2)=C(i,2)+sum(P(:,k+1));
        C(i,3)=C(i,3)+sum(P(:,k));
        M(i,j)=(P(i,k)+4*P(i,k+1)+P(i,k+2))/6;
        k=k+3; t=t+1;
    end 
end
C=1./C; S=B.*C;
k=1;
% Weights
for i=1:n
    W1(i)=0.5*(a*S(i,3)+S(i,2)+(1-a)*S(i,1));
end
W=W1'./sum(W1);
A1=M*W;
lambda=mean((A1./W));
LambdaT= n+(0.1*(n-1)*m);
CI=(lambda-n)/(n-1);
CR=CI/m;
Er=(LambdaT-n)/(n);

if CR<0.1
    fprintf('The consistency ratio is acceptable. \n')
else
    warning('The consistency ratio is not acceptable! ')
end
end