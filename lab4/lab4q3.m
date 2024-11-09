syms t;
y3(t) = piecewise((mod(t,18)>=13.5), abs(5*cos(pi*t/9)), (mod(t,18)<4.5),abs(5*cos(pi*t/9)),0);

y3n = nan(1,360);
for i = -40:319
    y3n(i+41) = y3(i/10) ;
end
n3 = (1:360)/10-4.1;
% stem(n3,y3n,'.');title('Discrete y_a(t) with T_s = 1/10 s');
% ylabel('y[n]');xlabel('n');xline(0);yline(0);



syms k
% a(k) = (5/2 *  ( sin(pi/2*(1-2*k))  / (pi*(1-2*k)) ) + ( sin(pi/2*(1+2*k)) / (pi*(1+2*k)) )) ;
a(k) = (5/2 *  ( sin(pi/2*(1-k))  / (pi*(1-k)) ) + ( sin(pi/2*(1+k)) / (pi*(1+k)) )) ;

a_k=nan(1,178);
for m = 1:178
    a_k(m)=a(m+1);
end
a_k2 = a_k(end:-1:1);

ak = [a_k2, 5/4, 5/pi, 5/4 ,a_k];

nk3 = (1:359)-180;


% stem(nk3*2*pi/9,ak,'r.');
% title('Spectrum Plot of y_a(t)');
% ylabel('a_k');xlabel('[rad/s]');xline(0);yline(0);
% xlim([-15 15])


n = -40:319;
f(k) = a(k)* cos(pi/9*k*n/9);


syms a
zn(a) = 5/pi + 5/2 * cos(pi/9 * n/9) + 2*symsum(f,k,[2 a]);

% plot(n/9, zn(150),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 150');
% ylabel('z_{150}[n]');xlabel('n');xline(0);yline(0);

% plot(n/9, zn(75),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 75');
% ylabel('z_{75}[n]');xlabel('n');xline(0);yline(0);

% plot(n/9, zn(30),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 30');
% ylabel('z_{30}[n]');xlabel('n');xline(0);yline(0);

% plot(n/9, zn(5),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 5');
% ylabel('z_{5}[n]');xlabel('n');xline(0);yline(0);

% plot(n/9, zn(3),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 3');
% ylabel('z_{3}[n]');xlabel('n');xline(0);yline(0);

% plot(n/9, zn(1),'Linewidth',1.5);
% title('Plot of z_N[n] -Approximation of y_a(t)- when N is 1');
% ylabel('z_{1}[n]');xlabel('n');xline(0);yline(0);



% stem(n/9,ones(1,length(n))*5/pi,'b.');
% title('Zeroth Harmonic of y_a(t)');
% ylabel('0th Harmonic');xlabel('t');xline(0);yline(0);


% stem(n/9,5/2*cos(pi/9*n/9),'b.');
% title('First Harmonic of y_a(t)');
% ylabel('1st Harmonic');xlabel('t');xline(0);yline(0);

% stem(n/9,f(2),'b.');
% title('Second Harmonic of y_a(t)');
% ylabel('2nd Harmonic');xlabel('t');xline(0);yline(0);

% stem(n/9,f(3),'b.');
% title('Third Harmonic of y_a(t)');
% ylabel('3rd Harmonic');xlabel('t');xline(0);yline(0);

