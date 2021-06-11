clc
clear
fs=44100;
t=0:1/fs:0.5;

e6_1=key(62, 1, fs);

c1_2=key(52, 2, fs); %表示2分音符的e3
c2_2=key(57, 2, fs);
c3_2=key(60, 2, fs);
c4_2=key(52, 2, fs);
c5_2=key(55, 2, fs);
c6_2=key(62, 2, fs);
c7_2=key(64, 2, fs);
c8_2=key(67, 2, fs);
c10_2=key(69, 2, fs);
c13_2=key(75, 2, fs);


b1_4=key(52, 4, fs);
b2_4=key(55, 4, fs);
b3_4=key(57, 4, fs);
b4_4=key(59, 4, fs);
b5_4=key(60, 4, fs);
b6_4=key(62, 4, fs);
b7_4=key(64, 4, fs);
b8_4=key(65, 4, fs);
b9_4=key(67, 4, fs);
b10_4=key(69, 4, fs);
b11_4=key(71, 4, fs);
b12_4=key(73, 4, fs);
b13_4=key(75,4,fs);

a1_8=key(52, 8, fs);
a2_8=key(55, 8, fs);
a3_8=key(57, 8, fs);
a4_8=key(59, 8, fs);
a5_8=key(60, 8, fs);
a6_8=key(62, 8, fs);
a7_8=key(64, 8, fs);
a8_8=key(65, 8, fs);
a9_8=key(67, 8, fs);
a10_8=key(69, 8, fs);
a11_8=key(71, 8, fs);
a13_8=key(75, 8, fs);


d5_16=key(60,16,fs);
d6_16=key(62,16,fs);
d8_16=key(65,16,fs);
d10_16=key(69,16,fs);
d11_16=key(71,16,fs);
d13_16=key(75,16,fs);


a=[a10_8 a9_8 a5_8 a5_8 d6_16 b6_4 a5_8 a5_8];%2s
b=[d6_16 b6_4 a5_8 a5_8 d6_16 b6_4 a6_8 a6_8];%4s
c=[a8_8 a9_8 a11_8 b8_4 b4_4 b13_4 b11_4 b11_4 b11_4 b12_4];%7.5s
part1=[a b c];
d=[a9_8 a8_8 a4_8 a4_8 d6_16 b6_4 a4_8 a4_8 d6_16 b6_4 a4_8 a4_8 d6_16 b6_4...
    a6_8 a6_8];%12s
e=[a8_8 a9_8 a11_8 c6_2 a8_8 a8_8 a9_8 a11_8 b8_4 b4_4 b1_4 b4_4];%16.5
f=[a6_8 d6_16 b6_4 a9_8 a8_8 a4_8 a1_8 a4_8 a4_8 d6_16 e6_1];%22s
part2=[d e f];
g=[c6_2 a6_8 a5_8 a6_8 a8_8 c6_2 a6_8 a5_8 a6_8 a8_8 c10_2 a10_8 a11_8 a10_8...
   a8_8 a10_8 a8_8 a6_8 a13_8 c10_2];%30s
h=[c6_2 a6_8 a5_8 a6_8 a8_8 c6_2 a6_8 a5_8 a6_8 a8_8 b10_4 b1_4 a8_8 a6_8 ...
    a5_8 a6_8 b5_4 a3_8 c3_2];%38s
i=[a10_8 a10_8 d10_16 d10_16 b10_4 a10_8 a8_8 a6_8 b5_4 a5_8 d13_16 c13_2 ];%42.75
j=[a13_8 a13_8 a11_8 a10_8 a8_8 d11_16 a10_8 a8_8 a6_8 b5_4 a5_8 a3_8 c6_2];%46s
k=[a6_8 a6_8 d6_16 d6_16 b6_4 a6_8 a8_8 a9_8 b8_4 a8_8 c4_2];%49.75s
l=[a4_8 b3_4 a3_8 a1_8 a3_8 d5_16 b6_4 a6_8 b6_4 a5_8 a3_8 c5_2];%54s
part3=[g h];
part4=[i j k l];
part5=part1;%1min2s
part6=[d a8_8 a9_8 a11_8 c6_2];%1min8s
part7=[a6_8 a8_8 a9_8 a11_8 b6_4 b4_4 c1_2 part1];
part8=part2;
myrailgun=[part1 part2 part3 part4 part5 part6 part7 part8];
 

% part1=[c4_8 c4_8 c4_4 e4_4 d4_4 d4_8 d4_4 c4_4 c4_8];
% part2=[d4_4 d4_4 c4_8 a3_8 a3_2];
% part3=[b3_8 b3_8 b3_4 c4_8 d4_8 d4_4];
% part4=[b3_4 a3_8 g3_4 e3_8 e3_2 e3_2];
% part5=[e4_8 d4_8 e4_4 d4_8 d4_8 d4_4 d4_8 c4_8 c4_2 d4_4 a3_4 a3_8 a3_8 d4_8 c4_8 c4_2];
% part6=[d4_4 a3_8 g3_4 g3_8 e3_2 e3_2];
% part7=[g4_4 g4_8 d4_8 d4_4 e4_4 g4_4 g4_8 d4_8 d4_4 c4_4 a3_2 a3_2];
% part8=[d4_4 d4_8 a3_8 a3_4 e4_4 d4_4 d4_8 c4_8 c4_4];
% part9=[c4_8 c4_8 c4_4 g3_8 c4_8 c4_4 g4_4 f4_4 e4_4 d4_4 d4_8 c4_8 c4_2 c4_4];
% part10=[c4_8 e4_8 g4_8 a4_4 g4_8 a4_4 g4_4 g4_8 a4_4];
% 
% para1=[part1 part2 part3 part4];
% para2=[part5 part3 part6];
% para3=[part7 part8 c4_4 g3_2 g3_2];
% para4=[part7 part8 c4_8 d4_8 d4_2 d4_2];
% para5=[part9 part10 g4_8 e4_8 e4_8 d4_4 e4_8 e4_2];
% para6=[part9 part10 g4_4 e4_8 g4_4 g4_8 g4_2];




sound(myrailgun,fs)
function g=key(p, n, fs)
t=0 : 1/fs : 2/n;
g=sin(2*pi* fre(p) *t);
end
function f = fre(p)
f=440*2^((p-69)/12);
end