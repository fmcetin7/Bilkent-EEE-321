function y = impuls(length)
%this function takes the length as an input and gives the desired impulse response as output in a discrete fashion.

syms n;
h(n) = piecewise(n<4, 0, (7/8)^n);

y = nan(1,length);

for i = 0:(length-1)
    y(i+1) = h(i);
end

end
