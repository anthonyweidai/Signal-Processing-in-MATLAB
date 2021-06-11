set(0, 'defaultfigurecolor', 'w');

Fs = 44100;
dt = 1.0/Fs;
T = 1; N = T/dt;
t = [0:N-1]/N;

x1 = sin(2*pi*10*t);
subplot(2, 2, 1);
plot(t, x1);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_1 = sin(20\pi t)')
xlabel('t')

x2 = sin(2*pi*300*t);
subplot(2, 2, 2);
plot(t, x2);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_2 = sin(600\pi t)')
xlabel('t')


x3 = x1.*x2;
subplot(2, 2, 3);
plot(t, x3);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_3 = x_1\times x_2')
xlabel('t')


x4 = x3.*x2;
subplot(2, 2, 4);
plot(t, x4);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_4 = x_3\times x_2')
xlabel('t')

figure;
subplot(1, 2, 1)
% x5 = ammod(x1, 300, Fs, 0, 1);
x5 = ammod(x1, 300, Fs, 0);
plot(t, x5);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_5')
xlabel('t')


subplot(1, 2, 2)
% x6 = ammod(x5, 300, Fs, 0, 1);
x6 = amdemod(x5, 300, Fs, 0);
plot(t, x6);
axis([0, 0.2, -1.2, 1.2]);
ylabel('x_6')
xlabel('t')

