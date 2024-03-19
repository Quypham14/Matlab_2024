function [x,y,z]=bai13thuchanh(a,b,c)
A=[a -b -c ; c 2 -a ; a c -3*c];
C=[10; 5 ;2];
B=A\C;
x=B(1);
y=B(2);
z=B(3);
end
%bai13thuchanh