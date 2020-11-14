close
A=2;
T=3;
t=-T:0.01:T;
w0=2*pi/T;
x=zeros(size(t));
n=999;
for k=1:2:n
    x=x+4*A*sin(k*w0*t)/(k*pi);
end
plot(t,x,'k');
grid on;
hold on;
xs=A*square(w0*t);
plot(t,xs,'r');
text=['n=',num2str(n)];
xlabel({'t',text});
ylabel('x(t)');