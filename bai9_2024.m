function [t,s] = bai9_2024(t0, t1, h)
    t = (t0:h:t1);
    s1 = sin(2*pi*5*t);
    c1 = cos(2*pi*3*t);
    e1 = exp(-0.1*t);
    s = s1.*c1 + e1;
    plot(t,s);    
end

