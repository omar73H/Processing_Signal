% Project part a 1       //y is discrete
subplot(2,1,1);
title('Wrongly Scaled');
plot(y); % the audio graph with the wrong time scaling

% the correct scaling
Ts = 1/Fs; % The sampling interval (Time Step)
N = length(y)-1; % number of samples - 1 (because we will start with 0)
t = 0 : Ts : N*Ts ; % The correct time scaling
subplot(2,1,2);
title('Correctly Scaled');
plot(t,y); % the audio graph with the correct time scaling