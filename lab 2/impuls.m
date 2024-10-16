function y = impuls(length) ;
syms n;
h(n) = piecewise(n<0, 0, n>=0, (7/8)^n*(n-4));

y = nan(1,length);

for i = 0:(length-1)
    y(i+1) = h(i);
end

end
