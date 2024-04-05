clear all
close all
% x(t)=2*cos(4*pi*t)-4*sin(2*pi*t);
%Sampling
fm=20;
M=8;
t=(0:1/fm:2);
x=2*cos(4*pi*t)-4*sin(2*pi*t);
plot(t,x);
hold on
plot(t,x,'ro');
delta = (max(x)-min(x))/(M-1);
Mq=min(x):delta:max(x);
for i=1:M
    if abs((x(1)-Mq(i)))<delta/2
        x(1)=Mq(i);
    end
end