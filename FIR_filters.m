set(0,'defaultfigurecolor','w');

Fs=2048;
dt=1.0/Fs;
T=1; N=T/dt;
t=[0:N-1]/N;

subplot(3,2,1)
x=sin(2*pi*50*t)+sin(2*pi*300*t)+sin(2*pi*500*t);
plot(t,x);
axis([0,0.1,-2,2]);

subplot(3,2,2)
P=fft(x,N);
Pyy=2*sqrt(P.*conj(P))/N;
f=linspace(0,Fs/2,N/2);
plot(f,Pyy(1:N/2));

subplot(3,2,3)
b=fir1(48,0.1);
x2=filter(b,1,x);
plot(t,x2);
axis([0,0.1,-2,2]);

subplot(3,2,4)
b=fir1(48,[0.2,0.4]);
x2=filter(b,1,x);
plot(t,x2);
axis([0,0.1,-2,2]);

subplot(3,2,5)
b=fir1(48,0.4,'high');
x2=filter(b,1,x);
plot(t,x2);
axis([0,0.1,-2,2]);
