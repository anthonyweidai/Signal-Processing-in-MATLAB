fs = 1000;
T = 1/fs;
N = 500; % desired length of signal
t = [0:N-1]*T; %time vector
f1 = 8; f2=f1*2;
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);

% To step though each sample use the following:
autocorrelation(x,x)

% to step through using 50 steps use:
autocorrelation(x,x, 50)