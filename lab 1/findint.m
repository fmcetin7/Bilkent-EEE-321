function smallestint = findint(q)

%finds the smallest integer of the rational input number

[num, denum] = rat(q);

smallestint = num / denum * denum;

end 
