%% 
% TEST
%[b, a]  = BAND_filt(15, 2500, 8, 15000)
%freqz(b,a)
%%
function [b, a]  = BAND_filt(G, fc, Q, fs)
% Derive coefficients for a band pass filter with a given amplitude and bandwidth. 
% Usage:     [b,a] = LOW_HIGH_filt(G, fc, fs, Q, type);
%            G is the logrithmic gain (in dB)
%            fc is the center frequency
%            Q is Q-term equating to (fb / fc)
%            fs is the sampling rate
%            fb is bandwidth

%Invert gain if a cut
%if(V0 < 1)
%    V0 = 1/V0;
%end
%edit
V0 = 10^(G/10);
H0 = V0 - 1;
d = - cos(2*pi*fc/fs);
fb = fc/Q;
cB = (tan(pi*fb/fs)-1)/(tan(pi*fb/fs)+1);
cC = (V0*tan(pi*fb/fs)-1)/(V0*tan(pi*fb/fs)+1);

if(G > 0)
    c = cB;
end  
if(G < 0)
    c = cC;
end

%return values
a = [  1, d*(1-c), -c];
b = [ H0/2 + 1 + c*H0/2, d*(1-c)*(H0/2+1) - d*(1-c)*H0/2, -c*(H0/2+1) + H0/2];

end
