
clear all
close all
clc
mx=0;my=0;
sigmax=2;sigmay=3;
x=mx+sigmax*randn(1e4,1);
y=my + sigmay*randn(1e4,1);
z=x-y;
plot(z,'y');hold on;
plot(y,'g');hold on;
plot(x,'r');