clc;
clear;
close all;
t= -10 : 0.01 : 10;
freq=0.5;

x1=sin(2*pi*freq*t);
x2=cos(2*pi*freq*t);
a=input("amplitude scaling factor:-");
shift=input("shift by:-");

add=x1+x2;
multi=x1.*x2;
scaling=a*x1;
folding=fliplr(x1);
shifting=x1;

f1=subplot(3,3,1);
plot(t,x1);
title('x1-iit2019240');
xlabel('t');
ylabel('x1');

f2=subplot(3,3,2);
plot(t,x2);
title('x2-iit2019240');
xlabel('t');
ylabel('x2');

f3=subplot(3,3,3);
plot(t,add);
title('add-iit2019240');
xlabel('t');
ylabel('add');

f4=subplot(3,3,4);
plot(t,multi);
title('multi-iit2019240');
xlabel('t');
ylabel('multi');

f5=subplot(3,3,5);
plot(t,scaling);
title('scaling-iit2019240');
xlabel('t');
ylabel('scaled');

f6=subplot(3,3,6);
plot(t,folding);
title('folding-iit2019240');
xlabel('t');
ylabel('folded');

f7=subplot(3,3,7);
plot(t+shift,x1);
title('shifting-iit2019240');
xlabel('t');
ylabel('shifted');

E=sum(abs(x1).^2);
disp(E);

power=E/((2*10) +2);
disp(power);