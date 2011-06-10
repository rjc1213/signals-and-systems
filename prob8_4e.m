
prob8_4a

% max number of bits we want to send
N=20;
fb=1/T;

% number of samples per bit (see prev samples from more desc)
nsbp=1/(fb*dt);

yb01=zeros(1,N);
yb01(1:2:N)=1; % alternate ones and zeros

y=zeros(1,N*nsbp);
y(1:nsbp:N*nsbp)=yb01;
y=conv(y,p);

t=[0:dt:(length(y)-1)*dt];

figure(3)
clf

subplot(211)
stem(t,y);

subplot(212)
eyediagram(y,fb,dt)

return
