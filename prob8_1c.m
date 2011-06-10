
clear
clc

prob8_1b

% same as in fft_ifft_X2x*.m
% since H is already defined from -pi to pi hence we will shift it to 
% define it over 0 to 2pi and then fftshift it again to define it over
% n=[-N:N]
nh=n;
nhalpha=n;
h=fftshift(ifft(ifftshift(H)));
halpha=fftshift(ifft(ifftshift(Halpha)));

H1=fftshift(fft(h));
Halpha=fftshift(fft(halpha));

figure(3)
clf

subplot(611)
plot(nh, real(h));
title('ifft of given fft H');

subplot(612)
plot(nhalpha, real(halpha));
title('ifft of given fft Halpha');

subplot(613)
plot(w,abs(H));
title('abs value of H');

subplot(614)
plot(w,unwrap(angle(H)));
title('unwrapped angle of H');

subplot(615)
plot(w,abs(Halpha));
title('abs value of Halpha');

subplot(616)
plot(w,unwrap(angle(Halpha)));
title('unwrapped angle of Halpha');

return
