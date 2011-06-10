
clear
clc

syms wn zeta

b=[wn^2];
a=[1 2*zeta*wn wn^1];

% for wn=1
b=subs(b,wn,1);
a=subs(a,wn,1);

a1=subs(a,zeta,0);
a2=subs(a,zeta,1/4);
a3=subs(a,zeta,1);
a4=subs(a,zeta,2);

zs1=roots(b);
ps1=roots(a1);
ps2=roots(a2);
ps3=roots(a3);
ps4=roots(a4);

w=[-5:0.1:5];

figure(1)
clf

ax=[-5 1 -2 2];

subplot(411)
plot(real(ps1),imag(ps1),'rX');
axis(ax);
title('zeta = 0');

subplot(412)
plot(real(ps2),imag(ps2),'rX');
axis(ax);
title('zeta = 1/4');

subplot(413)
plot(real(ps3),imag(ps3),'rX');
axis(ax);
title('zeta = 1');

subplot(414)
plot(real(ps4),imag(ps4),'rX');
axis(ax);
title('zeta = 2');

figure(2)
clf

subplot(411)
H1=freqs(b,a1,w);
plot(w,abs(H1));
% to find the indices of H1 for which it has infinity as value us
ninf=find(isinf(H1));
% now to get the values of w for the same indicies
winf=w(ninf);
% then to convert from number to str use following
title(['zeta = 0; have infinity on ', num2str(winf)]);

subplot(412)
H2=freqs(b,a2,w);
plot(w,abs(H2));
title('zeta = 1/4');

subplot(413)
H3=freqs(b,a3,w);
plot(w,abs(H3));
title('zeta = 1');

subplot(414)
H4=freqs(b,a4,w);
plot(w,abs(H4));
title('zeta = 2');

return
