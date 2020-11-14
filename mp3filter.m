set(0,'defaultfigurecolor','w');

[data, FsIn] = audioread('wuwukai.mp3');

% Parameters
Fs=FsIn;
dt=1.0/Fs;
T=1; N=T/dt;
len=length(data);
% len=length(data(1:20000));
t=[1:len]/len;

% Original signal
subplot(3,1,1)
x=data(1:len,1)';
plot(t,x);
axis([0,0.5,-1.2,1.2]);
title('Original signal')
ylabel('x_1(t)')
xlabel('t')

% Spectrum
subplot(3,1,2)
P=fft(x,N);
Pyy=2*sqrt(P.*conj(P))/N;
f=linspace(0,Fs/2,N/2);
plot(f,Pyy(1:N/2));
title('Spectrum')
ylabel('X(\omega)')
xlabel('\omega')

% Filter_mp3
subplot(3,1,3)
b=fir1(48,0.2);
% b=fir1(48,0.4,'high');
x2=filter(b,1,x);
plot(t,x2);
axis([0,0.5,-0.7,0.7]);
title('mp3 Filter')
ylabel('x_2(t)')
xlabel('t')

figure
P=fft(x2,N);
Pyy=2*sqrt(P.*conj(P))/N;
f=linspace(0,Fs/2,N/2);
plot(f,Pyy(1:N/2));
title('Spectrum')
ylabel('X(\omega)')
xlabel('\omega')

% original sound
% sound(data(1:len,1), FsIn);
% filtered sound
% sound(x2, FsIn);

% save wuwukai
% audiowrite('wuwukai_filter.wav',x2, FsIn);