function w = fmcconvo(u,v)

m=length(u);
n=length(v);

w = zeros(1,m+n-1);

for k = 1: m+n-1
    for g = max(1,k+1-n):1:min(k,m)
        if k-g+1 > 0
            w(k) = u(g)*v(k-g+1)+w(k);
        end
    end
end


end