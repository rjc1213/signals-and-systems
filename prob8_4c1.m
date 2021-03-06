
prob8_4a

% max number of bits we want to send
N=20;

% random seq of 0 and 1 bits
yb01r=rand(1,N) > 0.5;

% let us pick rate at which we want to send our signal
fb1=1/(2*T);
y01r1=samples_from_bits(yb01r,fb1,dt,p);

% let us pick rate at which we want to send our signal
fb2=1/(T);
y01r2=samples_from_bits(yb01r,fb2,dt,p);

figure(2)
clf

subplot(411)
stem(y01r1);

subplot(412) 
stem(y01r2);

subplot(413)
eyediagram(y01r1,fb1,dt);

subplot(414)
eyediagram(y01r2,fb2,dt);

return

