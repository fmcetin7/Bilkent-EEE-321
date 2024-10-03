[t1,y1] = disccosgenerator(3, 0.13*pi, 0.5);

dlmwrite('y1.txt', y1, 'delimiter', ' ');
y1_2 = dlmread('y1.txt');

[y1(4), y1_2(4), y1(8), y1_2(8), y1(115), y1_2(115), y1(128), y1_2(128)]