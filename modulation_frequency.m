set(0,'defaultfigurecolor','w');

Fs=44100;
dt=1.0/Fs;
T=1; N=T/dt;
t=[0:N-1]/N;

x1=sin(2*pi*10*t);
subplot(2,2,1);
plot(t,x1);
axis([0,0.2,-1.2,1.2]);
ylabel('x_1=sin(20\pi t)')
xlabel('t')

subplot(2,2,2)
x5=fmmod(x1,400,Fs,200);
plot(t,x5);
axis([0,0.2,-1.5,1.5]);
ylabel('x_5')
xlabel('t')


% figure
subplot(2,2,4)
% x6=ammod(x5,300,Fs,0,1);
x6=fmdemod(x5,400,Fs,200);
plot(t,x6);
axis([0,0.2,-1.5,1.5]);
ylabel('x_6')
xlabel('t')

