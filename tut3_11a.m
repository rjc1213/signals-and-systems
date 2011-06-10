a1=[2 0 5 0 5 0 2]
x1=synth(a1)
%note that subs(x1,T,1) will not work however subs(x1,'T',1) will work fine
x1_T1=subs(x1,'T',1)
figure
subplot(3,1,1)
ezplot(real(x1_T1),[0 2])
subplot(3,1,2)
ezplot(imag(x1_T1),[0 2])
subplot(3,1,3)
ezplot(abs(x1_T1),[0 2])

a2=[1/8*i -1/4*i 1/2*i -i 0 i -1/2*i 1/4*i -1/8*i]
x2=synth(a2)
x2_T2=subs(x2,'T',2)
figure
subplot(3,1,1)
ezplot(real(x2_T2),[0 4])
subplot(3,1,2)
ezplot(imag(x2_T2),[0 4])
subplot(3,1,3)
ezplot(abs(x2_T2),[0 4])

a3=[-1/8*i -1/4*i -1/2*i -i 0 i 1/2*i 1/4*i 1/8*i]
x3=synth(a3)
x3_T4=subs(x3,'T',4)
figure
subplot(3,1,1)
ezplot(real(x3_T4),[0 8])
subplot(3,1,2)
ezplot(imag(x3_T4),[0 8])
subplot(3,1,3)
ezplot(abs(x3_T4),[0 8])
