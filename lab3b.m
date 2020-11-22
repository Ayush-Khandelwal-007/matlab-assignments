clc;
clear;
close all;
freq=1;
t=-1.2:0.001:1.2;

x1=sin(2*pi*freq*t);
h1=cos(2*pi*freq*t);
h2(t<3)=1;
h2(t>3)=0;
h2(t<0)=0;
h2(t>0)=1;


subplot(3,1,1);
plot(t,h2);

t=-3.6:0.001:3.6;

y=conv(x1,conv(h1,h2));
z=conv(conv(x1,h1),h2);

subplot(3,1,2);
plot(t,y);


subplot(3,1,3);
plot(t,z);

