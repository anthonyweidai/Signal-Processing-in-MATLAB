set(0,'defaultfigurecolor','w');
close
t=-0.1:0.001:0.1;
x_t=sin(2*pi*40*t)+3*sin(2*pi*90*t);
n=-5:5;


fs=40;
xs=sin(2*pi*40*n/fs)+3*sin(2*pi*90*n/fs);
subplot(2,2,1);
plot(t,x_t);
hold on;
stem(n/fs,xs,'r--');
plot(n/fs,xs,'r--');
xlabel('t (fs=40Hz)');
ylabel('x_1(t)');
legend('x_1(t)','recovery');


fs=90;
xs=sin(2*pi*40*n/fs)+3*sin(2*pi*90*n/fs);
subplot(2,2,2);
plot(t,x_t);
hold on;
stem(n/fs,xs,'r--');
plot(n/fs,xs,'r--');
xlabel('t (fs=90Hz)');
ylabel('x_2(t)');
legend('x_2(t)','recovery');



fs=150;
xs=sin(2*pi*40*n/fs)+3*sin(2*pi*90*n/fs);
subplot(2,2,3);
plot(t,x_t);
hold on;
stem(n/fs,xs,'r--');
plot(n/fs,xs,'r--');
xlabel('t (fs=150Hz)');
ylabel('x_3(t)');
legend('x_3(t)','recovery');


fs=500;
xs=sin(2*pi*40*n/fs)+3*sin(2*pi*90*n/fs);
subplot(2,2,4);
plot(t,x_t);
hold on;
stem(n/fs,xs,'r--');
plot(n/fs,xs,'r--');
xlabel('t (fs=500Hz)');
ylabel('x_4(t)');
legend('x_4(t)','recovery');




