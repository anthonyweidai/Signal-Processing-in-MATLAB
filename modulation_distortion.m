set(0,'defaultfigurecolor','w');

Fs=44100;
dt=1.0/Fs;
T=1; N=T/dt;
t=[0:N-1]/N;


subplot(3,2,1)
x1=sin(2*pi*10*t)+1.3;
plot(t,x1);
axis([0,0.2,-2.5,2.5]);
ylabel('x_1=sin(20\pi t)+1.3')
xlabel('t')

subplot(3,2,2)
x2=sin(2*pi*10*t)+0.5;
plot(t,x2);
axis([0,0.2,-2.5,2.5]);
ylabel('x_2=sin(20\pi t)+0.5')
xlabel('t')

% subplot(3,2,3)
% x3=2000*sin(2*pi*400*t);
% plot(t,x3);
% axis([0,0.2,-2500,2500]); 
% ylabel('x_3')
% xlabel('x_3=sin(800\pi t)')


subplot(3,2,3)
x4=2000*ammod(x1,400,Fs,0);
plot(t,x4);
axis([0,0.2,-5500,5500]); 
ylabel('x_4=x_3\times x_1')
xlabel('t')

subplot(3,2,4)
x5=2000*ammod(x2,400,Fs,0);
plot(t,x5);
axis([0,0.2,-5500,5500]); 
ylabel('x_5=x_3\times x_2')
xlabel('t')

subplot(3,2,5)
x6=amdemod(x4,400,Fs,0);
plot(t,x6);
axis([0,0.2,-5500,5500]); 
ylabel('x_6')
xlabel('t')

subplot(3,2,6)
x7=amdemod(x5,400,Fs,0);
plot(t,x7);
axis([0,0.2,-5500,5500]); 
ylabel('x_7')
xlabel('t')