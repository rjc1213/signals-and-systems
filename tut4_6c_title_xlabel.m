%understanding amplitude modulation
clear
clc

load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);

% signal dash after passed through the filter
ydash=lsim(bf,af,dash,t(1:length(dash))); 
% signal dot after passed through the filter
ydot=lsim(bf,af,dot,t(1:length(dot))); 

figure(1)
gr=4; %graphic rows

subplot(gr,1,1)
plot(t(1:length(dash)),dash);
title('dash');

subplot(gr,1,2)
plot(t(1:length(dot)),dot);
title('dot');

subplot(gr,1,3)
plot(t(1:length(dash)),ydash);
title('filtered dash');

subplot(gr,1,4)
plot(t(1:length(dot)),ydot);
title('filtered dot');

%from the magnitude section it looks like that lower frequency components 
%will pass without attenuation and higher frequency components will be
%subsided
figure(2)
freqs(bf,af)
