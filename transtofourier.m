set(0,'defaultfigurecolor','w');
syms t w;
ut=sym('heaviside(t+0.5)-heaviside(t-0.5)');
fw=fourier(ut);
ezplot(fw,[-10*pi,10*pi]);
axis([-10*pi 10*pi -0.3 1]);
grid;
xlabel('\omega');
ylabel('X(\omega)');