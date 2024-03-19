function [t,round_t]= bai11_2024(t0,t1,h)
t=(t0:h:t1);
s1=20.*sin(2*pi*5*t);
round_t=round(s1);
plot(t,round_t);
end

