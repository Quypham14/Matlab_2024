T=2;
t=(-T:0.01:T);
n=length(t);
f=zeros(1,n);
f(1:round(n/2))=t(1:round(n/2))+T;
f(round(n/2)+1:n)=-t(round(n/2)+1:n)+T;
plot(t,f);