function [y,b,a]=lp_feedback(x,g,g1,d)
%where 
%      x = the input signal
%      g = g2/(1-g1) (this should be less than 1 for stability)
%      g1 = the feedback gain of the low pass filter (this should be less than 1 for stability)
%      d = the delay length
%      y = the output signal
%      b = the numerator coefficients of the transfer function
%      a = the denominator coefficients of the transfer function


%Stability _ If g and g1 are more than 1, set it to 0.7 .
%write
if(g > 1)
   g = 0.7; 
end
if(g1 > 1)
   g1 = 0.7; 
end

%Set the b and a coefficients of the transfer function
%edit

b=zeros(1,d+2);
b(d) = 1;
b(d+2) = -g1;

a= zeros(1,d+1);
a(1) = 1;
a(2) = -g1;
a(d+1) = -g*(1-g1);

%filter the input signal 
%edit
 y=filter(b,a,x);
 
end
 