close all
clear all
t=0:0.01:10;
p=5*exp(-2*t);
[m,n]=size(p);
p=p+0.5*rand(m,n);
plot(t,p)
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%
n1=0.00001;
n2=0.00001;
a=4.5;
b=-1;
for d=1:1000000
   err=0;
   for o=1:n
       l(o)=exp(b*t(o));
   end
    k1=mean(l);
    k2=mean(t);
       a=a-n1*k1;
       b=b-n2*a*k1*k2;
       f1=a*exp(b*t);
    err=err+sum((p-a*exp(b*t)).^2);
    err=err/n
    d=d
    s(d,1)=err;
    if rem(d,100)==0
    plot(f1,'r')
    hold on
    plot(p)
    pause
    close
    end
end
 
