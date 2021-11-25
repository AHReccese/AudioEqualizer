function [x, t] = istft(stft, wlen, hop, nfft, fs)

% stft - STFT matrix (only unique points, time across columns, freq across rows)
% wlen - length of the synthesis Hamming window
% hop - hop size
% nfft - number of FFT points
% fs - sampling frequency, Hz
% x - signal in the time domain
% t - time vector, s

% signal length estimation and preallocation
%write
L = size(stft,2);
% according to Written Code of STFT.m
xlen = wlen + (L-1)*hop;
x = zeros(1,xlen);
% form a periodic hamming window
w = hamming(wlen,'periodic');

ignore = mod(mod(nfft,2) + 1,2);
stft = [stft ; conj(flipud(stft(2:end - ignore, :)))];

for i = 1:L
    timeDomainSignal = (ifft(stft(:,i),nfft));
    extractedTimeSTFT = transpose((timeDomainSignal(1:wlen))./w);
    x( 1+(i-1) * hop : wlen+(i-1) * hop ) = x( 1+(i-1) * hop : wlen+(i-1) * hop ) + extractedTimeSTFT;  
end

%timeOutput
Tstep = 1/fs;
Tfinal = xlen * Tstep - Tstep;
t = 0 : Tstep : Tfinal;

