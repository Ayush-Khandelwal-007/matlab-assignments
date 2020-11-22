clear all
close all
clc

i=input('initalising point:-');
f=input('finishing point:-');
freq=input("freq:-");
t=(i:0.0001:f);
u(t>=0)=1;
u(t<0)=0;
r=max(0,t);
co=cos(t);
si=sin(2*pi*freq*t);
func=si.*u;

plot(t,r);