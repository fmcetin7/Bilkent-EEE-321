[t1,y1] = disccosgenerator(3, 0.13*pi, 0.5);
[t2,y2] = disccosgenerator(1, 2.2*pi, 0);
[t3,y3] = disccosgenerator(1, -1.8*pi, 0);
[t4,y4] = disccosgenerator(1, 0.26*pi, 0);
[t5,y5] = disccosgenerator(1, 0.26*pi, 0.7);    
[t6,y6] = disccosgenerator(1, 0.01*pi, 0);
[t7,y7] = disccosgenerator(1, 0.39*pi, 0);
[t8,y8] = disccosgenerator(1, pi, 0);
[t9,y9] = disccosgenerator(1, 1.08*pi, 0);
[t10,y10] = disccosgenerator(1, 0.92*pi, 0);
[t11,y11] = disccosgenerator(1, 1, 0);
[t12,y12] = disccosgenerator(1, 0.9, 0.3);

 % dlmwrite('y1.txt', y1, 'delimiter', ' ');
 % y1_2 = dlmread('y1.txt');

t = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12];
y = [y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11; y12];
x = 0:127;

for n = 1:12
    subplot(4,3,n);
    stem(x,y(n,:),'filled','MarkerSize',2);
    title(strcat('Graph ', int2str(n)));
    xlabel('n');
    ylabel(strcat('x_',int2str(n),'[n]'));
    xline(0);
    yline(0);
    ylim([-3.5,3.5]);
    xlim([-20, 150]);
end


