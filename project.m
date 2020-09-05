% Project part a 2
[fk,x] = fft_signals_project(Fs,y);
subplot(3,1,1);
plot(fk,x);

% Project signals part b making noise
y_m = y' + 0.1*cos(2*pi*50*7*t) + 0.1*cos(2*pi*75*8*t) + 0.1*cos(2*pi*500*5*t); % 350 ,, 600 ,, 2500
[fk_m,x_m]= fft_signals_project(Fs,y_m);
subplot(3,1,2);
plot(fk_m,x_m);

fdatool;
y_filter1=filter(Hd,y_m);
[fk_filter1,x_filter1]=fft_signals_project(Fs,y_filter1);
y_filter2=filter(Hd2,y_filter1);
[fk_filter2,x_filter2]=fft_signals_project(Fs,y_filter2);
y_filter3=filter(Hd3,y_filter2);
[fk_filter3,x_filter3]=fft_signals_project(Fs,y_filter3);
subplot(3,1,3);
plot(fk_filter3,x_filter3);
sound(y_filter3);