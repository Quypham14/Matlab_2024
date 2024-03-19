%f=x^3/3 +5*x^2 +x-6;
function [dem,x]=bai21_2024(a,b,saiso,f)
%a=0;
%b=3;
fa=f(a);%a^3/3+5*a^2+a-6;
fb=f(b);%b^3/3+5*b^2+b-6;
%saiso=1e-4;
dem=0;
if sign(fa)==sign(fb)
    msg='vo nghiem';
    error(msg);
else
    while(b-a)>saiso
    x=(a+b)/2;
    fx=f(x);%x^3/3 +5*x^2 +x-6;
    if sign(fa)==sign(fx)
        a=x;
        fa=fx;
    else
        b=x;
        fb=fx;
    end
    dem=dem+1;
    end
end