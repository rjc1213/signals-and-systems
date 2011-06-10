%understanding amplitude modulation
clear
clc

load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);

%by multiplying x by cos(w1 t) we are going to move m1 to low freq and m2
%and m3 to higher freq
x1=x.*cos(2*pi*f1.*t);
x1f=lsim(bf,af,x1,t); 

%now to take out m2 we multiply x with sin w2t to put m1 and m3 into higher
%freq range and filter the low freq for m2 
x2=x.*sin(2*pi*f2.*t);
x2f=lsim(bf,af,x2,t); 

x3=x.*sin(2*pi*f1.*t);
x3f=lsim(bf,af,x3,t); 

figure(1)
gr=6; %graphic rows

subplot(gr,1,1)
plot(t,x);
title('message x');

subplot(gr,1,2)
plot(t(1:length(dash)),dash);
title('dash');

subplot(gr,1,3)
plot(t(1:length(dot)),dot);
title('dot');

subplot(gr,1,4)
plot(t,x1f);
title('filtered x1 dot dash dash - w');

subplot(gr,1,5)
plot(t,x2f);
title('filtered x2 dash dash dash - o');

subplot(gr,1,6)
plot(t,x3f);
title('filtered x3 dash dot dot dash- x');
