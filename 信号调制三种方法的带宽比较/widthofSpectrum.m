Fs = 44100;
Fc = 1000;
dt = 1.0/ Fs;
T = 1; N = T/ dt;
t = [0:N-1]/ N;

x1 = sin(2* pi* 100* t) + 1.3;


% amplitude modulation,  dev is indicator
y1 = ammod(x1, Fc, Fs);
subplot(3, 3, 1)
plot(t, y1);
axis([0, 0.05, -2.5, 2.5]);

P = fft(y1, N);
Pyy = 2* sqrt(P.* conj(P))/ N;
f = linspace(0, Fs/ 2, N/ 2);
Pdb = 20* log10(Pyy);
subplot(3, 3, 2)
plot(f, Pdb(1:N/ 2));

z1 = amdemod(y1, Fc, Fs);
subplot(3, 3, 3)
plot(t, z1);
axis([0, 0.3, -2.5, 2.5]);


% frequency modulation
y2 = fmmod(x1, Fc, Fs, 200);
P = fft(y2, N);
subplot(3, 3, 4)
plot(t, y2);
axis([0, 0.05, -2.5, 2.5]);

Pyy = 2* sqrt(P.* conj(P))/ N;
f = linspace(0, Fs/ 2, N/ 2);
Pdb = 20* log10(Pyy);
subplot(3, 3, 5)
plot(f, Pdb(1:N/ 2));

z2 = fmdemod(y2, Fc, Fs, 200);
subplot(3, 3, 6)
plot(t, z2);
axis([0, 0.3, -2.5, 2.5]);


% pahse modulation,  cannot solve bias,  need to be fixed
y3 = pmmod(x1, Fc, Fs, 3.14, -3.14* 1.3);
P = fft(y3, N);
subplot(3, 3, 7)
plot(t, y3);
axis([0, 0.05, -2.5, 2.5]);

Pyy = 2* sqrt(P.* conj(P))/ N;
f = linspace(0, Fs/ 2, N/ 2);
Pdb = 20* log10(Pyy);
subplot(3, 3, 8)
plot(f, Pdb(1:N/ 2));

z3 = pmdemod(y3, Fc, Fs, 3.14)+1.3;
subplot(3, 3, 9)
plot(t, z3);
axis([0, 0.3, -2.5, 2.5]);
