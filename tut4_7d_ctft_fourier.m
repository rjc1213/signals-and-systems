%symbolic computation of continuous time fourier transform
clear
clc

syms t w x1 x2 X1 X2

x1=1/2*exp(-2*t)*heaviside(t);
disp('x1=')
pretty(x1)

x2=exp(-4*t)*heaviside(t);
disp('x2=')
pretty(x2)

X1=fourier(x1);
disp('X1=')
pretty(X1)

X2=fourier(x2);
disp('X2=')
pretty(X2)

subplot(211)
ezplot(abs(X1));
subplot(212)
ezplot(abs(X2));
