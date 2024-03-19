%f=@t a*y(t)+r;
function [t,y]=bai24_2024(a,r,t0,y0,tend,h)
%a=1;r=1;
%t0=0;
%y0=0;
%tend=3;
%h=0.05;
N=(tend-t0)/h;
t=[];
y=[];
t(1)=t0;
y(1)=y0;
for i=2:N+1
    f=a*y(i-1)+r;
    y(i)=y(i-1)+h*f;
    t(i)=t(i-1)+h;
end