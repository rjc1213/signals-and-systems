
clear
clc

% time period for sampling i.e each sample is taken every 1/2 sec 
% for 2 samples are taken every one sec i.e sampling freq is 2
T=1/2;
ts=[-4:T:4];

syms t

x1_t=cos(8*pi*t/5);
x1s=subs(x1_t,t,ts);

% piece wise
x2s=zeros(size(ts));
for i=1:length(ts)
    t1=ts(i);
    if (abs(t1)<=2)
        x2s(i)=1-abs(t1)/2;
    else
        x2s(i)=0;
    end
end
   
figure(1)
clf

subplot(211)
stem(ts,x1s);

subplot(212)
stem(ts,x2s);

return;
