[data, FsIn] = audioread('wuwukai.mp3');

% Parameters
Fs=FsIn;
dt=1.0/Fs;
T=1; N=T/dt;
len=length(data);
% len=length(data(1:20000));
t=[1:len]/len;

x=data(1:len,1)';

b=fir1(48,0.2);
x2=filter(b,1,x);

% original sound
% sound(data(1:len,1), FsIn);
% filtered sound
sound(x2, FsIn);