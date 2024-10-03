function [T,y]=disccosgenerator(amp,w,phi)

% amp = amplitude
% w = normalized frequency (in radians)
% n = unitless integer variable 
% phi = phase shift in radians
% k = how many periods the graph will contain

T = findperiod(w);

x = (0:127);
y = nan(1,128);

for n = 0:127
    y(n+1) = amp * cos(w*x(n+1)+phi);
end

end
