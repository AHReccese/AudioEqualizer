
function Xenv = specenv(Xamp, f)
% Xamp - amplitude spectrum of the signal
% f - frequency vector, Hz
% Xenv - envelope of the amplitude spectrum
% spectral envelope extraction via shape-preserving
% piecewise cubic interpolation of the spectral peaks
% Apply moving average filter for smoothing
%edit
[pks, locs] = findpeaks(Xamp+eps);
freqPks = (locs-1)*(f(2) - f(1));
% we can also use spline interpolation
% but after some tests we got that interp1 is better than spline.
Xenv = interp1(freqPks, pks', f, 'pchip');
Xenv = smooth(Xenv, 5, 'moving');