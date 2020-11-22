clc;
clear;
close all;
freq=1;t=-1.2:0.001:1.2;

subplot(1,3,1);
x(t<1)=1;
x(t>-1)=1;
x(t>1)=0;
x(t<-1)=0;
plot(t,x);

subplot(1,3,2);
h(t<1)=1;
h(t>-1)=1;
h(t>1)=0;
h(t<-1)=0;
plot(t,h);

subplot(1,3,3);
freq=1;t=-2.4:0.001:2.4;
y=conv(x,h);
plot(t,y);