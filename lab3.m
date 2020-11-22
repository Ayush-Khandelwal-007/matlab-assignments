clc;
clear;
close all;
freq=1;
t=0:0.01:10;

x1=sin(2*pi*freq*t);
x2=cos(2*pi*freq*t);
y=conv(x1,x2);

subplot(3,1,1);
plot(t,x1,'LineWidth',2);
title('x1-iit2019240');
xlabel('t');
ylabel('x1');

subplot(3,1,2);
plot(t,x2,'LineWidth',2);
title('x2-iit2019240');
xlabel('t');
ylabel('x2');

t=0:0.01:20;

subplot(3,1,3);
plot(t,y,'LineWidth',2);
title('convolatio-iit2019240');
xlabel('t');
ylabel('convolated');