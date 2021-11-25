 function [stft, f, t] = stft(x, wlen, hop, nfft, fs)

% x - signal in the time domain
% wlen - length of the analysis Hamming window
% hop - hop size
% nfft - number of FFT points
% fs - sampling frequency, Hz
% stft - STFT matrix (only unique points, time across columns, freq across rows)
% f - frequency vector, Hz
% t - time vector, s

% represent x as column-vector
x = x(:);

% length of the signal
xlen = length(x);

% form a periodic hamming window
%write
%STFT coloumn Num.
num = floor((xlen-wlen)/hop);
num = num + 1

%STFT row Num (storing Half Num of Frequencies)
FFTnum = ceil((1+nfft)/2);
% w len -> windows len -> creating HammingWindow.
w = hamming(wlen,'periodic');

% stft matrix estimation
%edit
Xr = zeros(wlen,num);
stft=zeros(FFTnum,num);

for i = 0:(num-1)
   tempSignal = x(1+i*hop : wlen+i*hop).*w;	
   tempSignalFFT = fft(tempSignal,nfft); 
   stft(:,i+1) = tempSignalFFT(1:FFTnum); 
end

%creating outputs

%1-FreqDomain
Fstep = fs/nfft
finalF = fs*(FFTnum/nfft) - Fstep
f=0:Fstep:finalF;

%2-TimeDomain
Tstep = 1/fs
finalT = xlen*Tstep - Tstep
t=0:Tstep:finalT;