%%
% Q4 -> STFT TEST
clc
clear
N = 12;
xpre = [1,2,3,4,5,6,6,5,4,3,2,1];
wlen = 6;
hop = 6;
nfft = N;
fs = 1000;
[myStft, f, t] = stft(xpre, wlen, hop, nfft, fs);
[xpost, t] = istft(myStft, wlen, hop, nfft, fs);
figure
plot(xpre)
hold on 
plot(xpost)
ylim([0 7])
xlim([0 13])
legend('x before STFT','x after STFT')
title('Testing STFT')
xlabel('index')
ylabel('x before and after STFT')

%%
clc
clear
% Q5 -> part one
[y,Fs] = audioread('Audio_files\Audio3.mp3');
freq = 3000;
waveLen = length(y');
% sampling
t = linspace(0,waveLen/Fs - 1/Fs,waveLen);
x = sawtooth(2*pi*freq*t);
figure
plot(t,x)
xlim([0 0.004])
ylim([-1 1])
grid on
title('TeethWave')
xlabel('t(s)')
ylabel('Amp')
filename = 'Modulator_sig\S2.wav';
audiowrite(filename,x,Fs);

%%
clc
clear
% Q5 -> part two
[y,Fs] = audioread('Audio_files\Audio3.mp3');
freq = 3000;
waveLen = length(y');
% sampling
t = linspace(0,waveLen/Fs - 1/Fs,waveLen);
x = sin(2*pi*freq*t);
figure
plot(t,x)
xlim([0.0 0.006])
ylim([-1 1])
grid on
title('SinWave')
ylabel('Amp')
xlabel('t(s)')
filename = 'Modulator_sig\S1.wav';
audiowrite(filename,x,Fs);

%%
% Q5 -> part 4
% sin module
[y,Fs] = audioread('Audio_files\Audio3.mp3');
[carrier,Fs] = audioread('Modulator_sig\S1.wav');
waveLen = length(y');
% sampling
t = 0:1/Fs:waveLen*(1/Fs) - 1/Fs;
mod = y.*carrier;
figure
plot(t,y)
title('Audio3File')
ylabel('Amp')
xlabel('index')
figure
plot(t,mod)
title('modulated Audio3 by S2')
ylabel('Amp')
xlabel('index')
