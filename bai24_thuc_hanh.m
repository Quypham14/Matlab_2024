function [dem,x]=bai24_thuc_hanh(a,b,saiso,f)
fa=f(a);
fb=f(b);
dem=0;
if sign(fa)==sign(fb)
    msg='vo nghiem';
    error(msg);
else
    while(b-a)>saiso
        x=(a+b)/2;
        fx=f(x);
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
end