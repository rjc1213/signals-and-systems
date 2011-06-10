a1=[1 -0.8]
b1=[1]

a2=[1 0.8]
b2=[1]

N=1024

[h1 omega1]=freqz(b1,a1,N,'whole')
[h2 omega2]=freqz(b2,a2,N,'whole')

figure
subplot(2,1,1)
plot(omega1, abs(h1))
xlabel('omega')
ylabel('abs(h1)')
title('frequency responce')

subplot(2,1,2)
plot(omega2, abs(h2))
xlabel('omega')
ylabel('abs(h2)')
title('frequency responce')
