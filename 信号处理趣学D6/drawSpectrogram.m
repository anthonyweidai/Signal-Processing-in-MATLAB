set(0, 'defaultfigurecolor', 'w');
syms t w;
ut = sym(str2sym('heaviside(t+0.5)-heaviside(t-0.5)')); % function str2sym() should be used in 2020a
fw = fourier(ut);
ezplot(fw,[-10*pi, 10*pi]);
% fplot(fw,[-10*pi, 10*pi]);
axis([-10*pi 10*pi -0.3 1]);
grid;
xlabel('\omega');
ylabel('X(\omega)');