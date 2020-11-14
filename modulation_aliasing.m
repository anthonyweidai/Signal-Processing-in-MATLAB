set(0,'defaultfigurecolor','w');

Fs=44100;
dt=1.0/Fs;
T=1; N=T/dt;
t=[0:N-1]/N;

subplot(3,2,1)
x1=sin(2*pi*100*t);
plot(t,x1);
axis([0,0.2,-1.2,1.2]);
ylabel('x_1=sin(200\pi t)')
xlabel('t')

% fz=300Hz
subplot(3,2,3)
x2=ammod(x1,300,Fs,0);
plot(t,x2);
axis([0,0.2,-1.2,1.2]);
ylabel('x_2')
xlabel('t')

subplot(3,2,5)
x3=amdemod(x2,300,Fs,0);
plot(t,x3);
axis([0,0.2,-1.2,1.2]);
ylabel('x_3')
xlabel('t')

% fz=50Hz
subplot(3,2,4)
x4=ammod(x1,50,Fs,0);
plot(t,x4);
axis([0,0.2,-1.2,1.2]);
ylabel('x_4')
xlabel('t')

subplot(3,2,6)
x5=amdemod(x4,50,Fs,0);
plot(t,x5);
axis([0,0.2,-1.2,1.2]);
ylabel('x_5')
xlabel('t')