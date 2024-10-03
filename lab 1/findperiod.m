function T = findperiod(w)

% finds the period of the given w value

Trat = (2*pi)/w;
T2 = findint(Trat);
T = round(abs(T2));

end