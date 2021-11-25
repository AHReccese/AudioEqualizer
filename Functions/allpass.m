function [y,b,a]=allpass(x,g,d)

%This is an allpass filter function.
%
%where x = the input signal
%      g = the feedforward gain (the feedback gain is the negative of this) 
%      d = the delay length
%      y = the output signal
%      b = the numerator coefficients of the transfer function
%      a = the denominator coefficients of the transfer function
%
%

%If the feedback gain is more than 1, set it to 0.7 .
%wirte

if(g > 1)
   g = 0.7; 
end

%Set the b and a coefficients of the transfer function depending on g and d.
%edit
b = zeros(1,d-1);
b = [b g];
a = zeros(1,d-1);
a = [1 a];

%filter the input signal 
%edit
y=filter(b,a,x);


end