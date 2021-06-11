Fs = 5120;
N = 32768;%8192*4 = 2^13
dt = 1.0/Fs;
df = (500.0/N);
T = dt*N;
t = linspace(0,T,N);
% x = zeros(1:N);
for i = 1:8192
    x(i) = sin(2*pi*200*i*dt);
    x(i+8192) = sin(2*pi*400*i*dt);
    x(i+8192*2) = sin(2*pi*600*i*dt);
    x(i+8192*3) = sin(2*pi*800*i*dt);
end
z = spectrogram(x,1024,512);
P = 20*log10(sqrt(z.*conj(z)));
X = linspace(0,Fs/2,513);
Y = linspace(0,dt*N,63);
mesh(X,Y,P');
view(15,70);
