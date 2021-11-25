%%
% TEST
%[b, a]  = LOW_HIGH_filt(15, 2500, 15000, 3, 'LOW_f');
%freqz(b,a)
%%
function [b, a]  = LOW_HIGH_filt(G, fc, fs, Q, type)
% Derive coefficients for a low/high pass filter with a given amplitude and cutoff frequency
% Usage:     [b,a] = LOW_HIGH_filt(G, fc, fs, Q, type);
%
%            G is the logrithmic gain (in dB)
%            fc is the center frequency
%            fs is the sampling rate
%            Q adjusts the slope be replacing the sqrt(2) term
%            type is a character string defining filter type
%            Choices are: 'LOW_f' or 'HIGH_f'
%


%Invert gain if a cut
%if(V0 < 1)
%    V0 = 1/V0;
%end
%edit
V0 = 10^(G/10);
H0 = V0 - 1;
if(strcmp(type, 'LOW_f'))
    cB = (tan(pi*fc/fs)-1)/(tan(pi*fc/fs)+1);
    cC = (tan(pi*fc/fs)-V0)/(tan(pi*fc/fs)+V0);
    if(G > 0)
        c = cB;
    end  
    if(G < 0)
        c = cC;
    end
    a = [  1, c, 0];
    b = [ H0/2 + 1 + H0/2*c, c + c*H0/2 + H0/2, 0];
elseif(strcmp(type, 'HIGH_f'))
    cB = (tan(pi*fc/fs)-1)/(tan(pi*fc/fs)+1);
    cC = (V0*tan(pi*fc/fs)-1)/(V0*tan(pi*fc/fs)+1);
    if(G > 0)
        c = cB;
    end
    if(G < 0)
        c = cC;
    end  
    a = [  1, c, 0];
    b = [ H0/2 + 1 - H0/2*c, c + c*H0/2 - H0/2, 0];
end

end
