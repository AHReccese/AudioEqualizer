%%
function [y,b,a]=Specific_Design(x,cg,cg1,cd,ag,ad,k)
%This is a reverberator  which consists of 6 parallel feedback IIR filters 
%(each with a low pass filter in the feedback loop) in series with an all pass filter.
%
%where
%      x = the input signal
%      cg = a vector of length 6 which contains g2/(1-g1) (this should be less than 1 for stability),
%           where g2 is the feedback gain of each of the parallel filters and g1 is from the following parameter 
%      cg1 = a vector of length 6 which contains the gain of the low pass filters in the feedback loop of
%            each of the parallel filters (should be less than 1 for stability)
%      cd = a vector of length 6 which contains the delay of each of the parallel filters 
%      ag = the gain of the allpass filter (this should be less than 1 for stability)
%      ad = the delay of the allpass filter 
%      k = the gain factor of the direct signal
%      y = the output signal
%      b = the numerator coefficients of the transfer function
%      a = the denominator coefficients of the transfer function
%
%

% send the input to each of the 6 parallel filters separately
%write
%edit lp_feedback.m
% send the output of the parallel filters to the allpass filter
%[y,b,a] = allpass(apinput,ag,ad);
%edit allpass.m
% add the scaled direct signal

numeratorOfSum = 0;
denominatorOfSum = 1;
Y = {};
B = {};
A = {};
for i = 1:6
   [y, b, a] = lp_feedback(x,cg(i),cg1(i),cd(i));
   Y{i} = y;
   B{i} = b;
   A{i} = a;
   
   numeratorOfSumCopy = numeratorOfSum;
   denominatorOfSumCopy = denominatorOfSum;
   
   maxLen = max([length(numeratorOfSumCopy),length(a),length(b),length(denominatorOfSumCopy)]);
   if(numeratorOfSumCopy == 0)
       numeratorOfSum = b;
       denominatorOfSum = a;
   else
       numeratorOfSumCopy = [numeratorOfSumCopy zeros(1,maxLen-length(numeratorOfSumCopy))];
       a = [a zeros(1,maxLen-length(a))];
       b = [b zeros(1,maxLen-length(b))];
       denominatorOfSumCopy = [denominatorOfSumCopy zeros(1,maxLen-length(denominatorOfSumCopy))];
       numeratorOfSum = conv(numeratorOfSumCopy,a) + conv(b,denominatorOfSumCopy);
       denominatorOfSum = conv(denominatorOfSumCopy,a);
   end
end

inputOfAllPass = 0;
maxLen = length(Y{1});
for i = 2:6
    if (length(Y{i}) > maxLen)
       maxLen = lengths(i);
    end
end

for i = 1:6
   inputOfAllPass = inputOfAllPass + [Y{i}, zeros(1,maxLen-length(Y{i}))];
end

[outOfAllPass, numeratorOfAllPass, denominatorOfAllPass] = allpass(inputOfAllPass,ag,ad);
numeratorOfTotalTF = conv(numeratorOfSum, numeratorOfAllPass);
denominatorTotalTF = conv(denominatorOfSum, denominatorOfAllPass);
maxLen = max([length(denominatorTotalTF),length(numeratorOfTotalTF)]);

y = outOfAllPass + k * [x, zeros(1,length(outOfAllPass) - length(x))];

a = denominatorTotalTF;
b=[numeratorOfTotalTF, zeros(1,maxLen - length(numeratorOfTotalTF))] + k * [denominatorTotalTF, zeros(1, maxLen - length(denominatorTotalTF))];

y = y/norm(y);

end
