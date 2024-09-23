[y, fs] = audioread('sound.wav');
timeValues = (1 : length(y)) / fs;
subplot(3, 1, 1);
plot(timeValues, y, 'b-');
grid on;
xlabel('Time')
ylabel('Signal')
title('Original Sound File')
amplitude  =  1;
% fs = 20500; % sampling frequency
% duration = 2;
freq = 50000000    ;
% timeValues = 0 : (1 / fs) : duration;
monoTone = amplitude * sin(2 * pi * freq * timeValues);
monoTone = monoTone'; % Reshape into column vector.
subplot(3, 1, 2);
plot(timeValues, monoTone, 'r-');
grid on;
title('Mono-Tone')
xlabel('Time')
ylabel('Signal')
% Add together
outputSound = y + (monoTone);
subplot(3, 1, 3);
plot(timeValues, outputSound, 'g-');
grid on;
title('The Sum')
xlabel('Time')
ylabel('Signal')
audiowrite('sound.wav',outputSound,fs);