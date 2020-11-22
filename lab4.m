clc;
clear;
close all;
t=0:0.01:10;
T=2;
f=1;

u=0.5+0.5*square(t*pi);

plot(t,u);
axis([0 7 -2 2]);
line(xlim,[0 0]);
line([0 0],ylim);
plot(t,u);
syms t;
b=0;
a0=(1/T)*int(u,t,0,1);
a=a0;
for i = 1:10
    a=a+(2/T)*int(u*cos(2*pi*f*i*t),t,0,1);
    b=b+(2/T)*int(u*sin(2*pi*f*i*t),t,0,1);
end


