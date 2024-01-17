% ----------------------------------------------------------------------- %
% Returns the Random Index (m)
% "Thomas L. Saaty, Liem T. Tran,
% On the invalidity of fuzzifying numerical judgments
% in the Analytic Hierarchy Process, Mathematical and Computer Modelling,
% Volume 46, Issues 7–8, 2007, Pages 962-975,
% ISSN 0895-7177, https://doi.org/10.1016/j.mcm.2007.03.022."
% ----------------------------------------------------------------------- %
% AUTHORS
%           Ojeaga Trust
%           
% lAST UPDATE
%           September 09, 2023
% ----------------------------------------------------------------------- %
function [m]=RI(n)
if n>=1
    if n==1 || n==2
        m=0;
    elseif n==3
        m=0.58;
    elseif n==4
        m=0.9;
    elseif n==5
        m=1.12;
    elseif n==6
        m=1.24;
    elseif n==7
        m=1.32;
    elseif n==8
        m=1.41;
    elseif n==9
        m=1.45;
    elseif n>=10
        m=1.49;
    end
else
    warning('The number n should be larger than or equal to 1!')
end
end