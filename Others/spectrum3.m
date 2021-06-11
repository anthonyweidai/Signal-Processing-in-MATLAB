A=5;a=5;
num=[A];
den=[1 a];
figure();
sys=tf(num,den,.0);
bode(sys);
[reb,imb,wb]=bode(sys);
grid on