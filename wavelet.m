T=0:0.001:12;
x=chirp(T,1,12,400,'q');
plot(x)
figure
c=cwt(x,1:64,'db10','plot');