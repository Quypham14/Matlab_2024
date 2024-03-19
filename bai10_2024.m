function [t,s]=bai10_2024(t0,t1,h)
t=(t0:h:t1);
s1=sin(2*pi*5*3*t);
s2=sin(2*pi*5*3*t);
s=s1.*s2;
plot(t,s);
end