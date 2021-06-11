%%Matlab°æ¡¶¿¨Å©¡·
% Cripple Pachebel's Canon on Matlab
% Have fun?http://blog.csdn.net/bat67
fs = 44100; % sample rate
dt = 1/fs;
T16 = 0.125;
t16 = [0:dt:T16];

[temp k] = size(t16);
t4 = linspace(0,4*T16,4*k);
t8 = linspace(0,2*T16,2*k);
t2 = linspace(0,8*T16,8*k);

[temp i] = size(t4);
[temp j] = size(t8);
% Modification functions
mod2 = sin(pi*t2/t2(end));
mod4 = sin(pi*t4/t4(end));
mod8 = sin(pi*t8/t8(end));
mod16 = sin(pi*t16/t16(end));
f0 = 2*146.8; % reference frequency
ScaleTable = [1/2 9/16 5/8 2/3 3/4 5/6 15/16 ...
1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ...
 2 9/4 5/2 8/3 3 10/3 15/4 4 ];

% 1/2 notes
% 
 c1_2 = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
% c1_4 = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
 c2_2 = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
% c1_4 = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
 c3_2 = mod2.*cos(2*pi*ScaleTable(5)*f0*t2);
% c1_4 = mod2.*cos(2*pi*ScaleTable(6)*f0*t2);
 c4_2 = mod2.*cos(2*pi*ScaleTable(7)*f0*t2);
% c1_4 = mod2.*cos(2*pi*ScaleTable(8)*f0*t2);
 c5_2 = mod2.*cos(2*pi*ScaleTable(9)*f0*t2);
% c1_4 = mod2.*cos(2*pi*ScaleTable(10)*f0*t2);
 c6_2 = mod2.*cos(2*pi*ScaleTable(11)*f0*t2);
% c1_4 = mod2.*cos(2*pi*ScaleTable(12)*f0*t2);
 c7_2 = mod2.*cos(2*pi*ScaleTable(13)*f0*t2);
% c1_4 = mod2.*cos(2*pi*ScaleTable(14)*f0*t2);
 c8_2 = mod2.*cos(2*pi*ScaleTable(15)*f0*t2);
 % c1_4 = mod2.*cos(2*pi*ScaleTable(16)*f0*t2);
 c9_2 = mod2.*cos(2*pi*ScaleTable(17)*f0*t2);
%  c9_4 = mod2.*cos(2*pi*ScaleTable(18)*f0*t2);
 c10_2 = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);
%  c10_4 = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
 c11_2 = mod2.*cos(2*pi*ScaleTable(21)*f0*t2);
%  c11_4 = mod2.*cos(2*pi*ScaleTable(22)*f0*t2);
 c12_2 = mod2.*cos(2*pi*ScaleTable(23)*f0*t2);

% 1/4 notes

 b1_4 = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
 b2_4 = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
 b3_4 = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
 b4_4 = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
 b5_4 = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
 b6_4 = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);
 b7_4 = mod4.*cos(2*pi*ScaleTable(13)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(14)*f0*t4);
 b8_4 = mod4.*cos(2*pi*ScaleTable(15)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(16)*f0*t4);
 b9_4 = mod4.*cos(2*pi*ScaleTable(17)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(18)*f0*t4);
 b10_4 = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);
%  = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
 b11_4 = mod4.*cos(2*pi*ScaleTable(21)*f0*t4);
%  = md4.*cos(2*pi*ScaleTable(22)*f0*t4);
 b12_4 = mod4.*cos(2*pi*ScaleTable(23)*f0*t4);
blkf = zeros(1,i);
% 1/8 notes
 a1_8 = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
 a2_8 = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
 a3_8 = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
% = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
 a4_8 = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
 a5_8 = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
 a6_8 = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);
 a7_8 = mod8.*cos(2*pi*ScaleTable(13)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(14)*f0*t8);
 a8_8 = mod8.*cos(2*pi*ScaleTable(15)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(16)*f0*t8);
 a9_8 = mod8.*cos(2*pi*ScaleTable(17)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(18)*f0*t8);
 a10_8 = mod8.*cos(2*pi*ScaleTable(19)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(20)*f0*t8);
 a11_8 = mod8.*cos(2*pi*ScaleTable(21)*f0*t8);
%  = mod8.*cos(2*pi*ScaleTable(22)*f0*t8);
 a12_8 = mod8.*cos(2*pi*ScaleTable(23)*f0*t8);

blke = zeros(1,j);
% 1/16 notes
 d1_16 = mod16.*cos(2*pi*ScaleTable(1)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(2)*f0*t16);
 d2_16 = mod16.*cos(2*pi*ScaleTable(3)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(4)*f0*t16);
 d3_16 = mod16.*cos(2*pi*ScaleTable(5)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(6)*f0*t16);
 d4_16 = mod16.*cos(2*pi*ScaleTable(7)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(8)*f0*t16);
 d5_16 = mod16.*cos(2*pi*ScaleTable(9)*f0*t16);
% = mod16.*cos(2*pi*ScaleTable(10)*f0*t16);
 d6_16 = mod16.*cos(2*pi*ScaleTable(11)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(12)*f0*t16);
 d7_16 = mod16.*cos(2*pi*ScaleTable(13)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(14)*f0*t16);
 d8_16 = mod16.*cos(2*pi*ScaleTable(15)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(16)*f0*t16);
 d9_16 = mod16.*cos(2*pi*ScaleTable(17)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(18)*f0*t16);
 d10_16 = mod16.*cos(2*pi*ScaleTable(19)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(20)*f0*t16);
 d11_16 = mod16.*cos(2*pi*ScaleTable(21)*f0*t16);
%  = mod16.*cos(2*pi*ScaleTable(22)*f0*t16);
 d12_16 = mod16.*cos(2*pi*ScaleTable(23)*f0*t16);


a=[a10_8 a9_8 a5_8 a5_8 d6_16 b6_4 a5_8 a5_8];%2s
b=[d6_16 b6_4 a5_8 a5_8 d6_16 b6_4 a6_8 a6_8];%4s
c=[a8_8 a9_8 a11_8 b8_4 b4_4 b12_4 b11_4 b11_4 b11_4 b12_4];%7.5s
part1=[a b c];
d=[a9_8 a8_8 a4_8 a4_8 d6_16 b6_4 a4_8 a4_8 d6_16 b6_4 a4_8 a4_8 d6_16 b6_4...
    a6_8 a6_8];%12s
e=[a8_8 a9_8 a11_8 c6_2 a8_8 a8_8 a9_8 a11_8 b8_4 b4_4 b1_4 b4_4];%16.5
f=[a6_8 d6_16 b6_4 a9_8 a8_8 a4_8 a1_8 a4_8 a4_8 d6_16 c6_2];%22s
part2=[d e f];
g=[c6_2 a6_8 a5_8 a6_8 a8_8 c6_2 a6_8 a5_8 a6_8 a8_8 c10_2 a10_8 a11_8 a10_8...
   a8_8 a10_8 a8_8 a6_8 a12_8 c10_2];%30s
h=[c6_2 a6_8 a5_8 a6_8 a8_8 c6_2 a6_8 a5_8 a6_8 a8_8 b10_4 b1_4 a8_8 a6_8 ...
    a5_8 a6_8 b5_4 a3_8 c3_2];%38s
i=[a10_8 a10_8 d10_16 d10_16 b10_4 a10_8 a8_8 a6_8 b5_4 a5_8 d12_16 c12_2 ];%42.75
j=[a12_8 a12_8 a11_8 a10_8 a8_8 d11_16 a10_8 a8_8 a6_8 b5_4 a5_8 a3_8 c6_2];%46s
k=[a6_8 a6_8 d6_16 d6_16 b6_4 a6_8 a8_8 a9_8 b8_4 a8_8 c4_2];%49.75s
l=[a4_8 b3_4 a3_8 a1_8 a3_8 d5_16 b6_4 a6_8 b6_4 a5_8 a3_8 c5_2];%54s
part3=[g h];
part4=[i j k l];
part5=part1;%1min2s
part6=[d a8_8 a9_8 a11_8 c6_2];%1min8s
part7=[a6_8 a8_8 a9_8 a11_8 b6_4 b4_4 c1_2 part1];
part8=part2;
myrailgun=[part1 part2 part3 part4 part5 part6 part7 part8];
sound(myrailgun,fs);
