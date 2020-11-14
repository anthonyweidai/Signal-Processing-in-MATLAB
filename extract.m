% parameters
set(0,'defaultfigurecolor','w');
n=6000;
fs=1000;
% N=512;
t=(0:n-1)/fs;
% f=(0:N/2-1)*fs/N;
f0=5;
x=sin(2*pi*f0*t);
z=x+randn(size(x));
[R,tao]=xcorr(z,600,'coeff');
subplot(2,1,1);
plot(t(1:1000),z(1:1000));
xlabel('时间/s');
ylabel('幅值');
subplot(2,1,2);
plot(tao,R);
xlabel('滞后');
ylabel('自相关函数');