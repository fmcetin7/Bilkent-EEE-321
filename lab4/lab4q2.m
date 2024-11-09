syms t;
y2(t) = abs(5*cos(pi*t/9));

y2n = nan(1,360);
for i = -40:319
    y2n(i+41) = y2(i/10) ;
end
n2 = (1:360)/10-4.1;
% stem(n2,y2n,'.');title('Discrete y_a(t) with T_s = 1/10 s');
% ylabel('y[n]');xlabel('n');xline(0);yline(0);

% fund. period = 9

syms k
a(k) = (5 *  ( sin(pi/2*(1-2*k))  / (pi*(1-2*k)) ) + ( sin(pi/2*(1+2*k)) / (pi*(1+2*k)) )) ;

a_k=nan(1,179);
for m = 1:179
    a_k(m)=a(m);
end
a_k2 = a_k(end:-1:1);
ak = [a_k2, 10/pi, a_k];

nk2 = (1:359)-180;

% stem(nk2*2*pi/9,real(ak),'r.');
% title('Spectrum Plot of y_a(t)');
% ylabel('a_k');xlabel('[rad/s]');xline(0);yline(0);
% xlim([-15 15])

n = -40:319;
f(k) = a(k)* cos(2*pi/9*k*n/9);

syms a
zn(a) = 10/pi + 2*symsum(f,k,[1 a]);

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

% stem(n/9,ones(1,length(n))*10/pi,'b.');
% title('Zeroth Harmonic of y_a(t)');
% ylabel('0th Harmonic');xlabel('t');xline(0);yline(0);


% stem(n/9,f(1),'b.');
% title('First Harmonic of y_a(t)');
% ylabel('1st Harmonic');xlabel('t');xline(0);yline(0);

% stem(n/9,f(2),'b.');
% title('Second Harmonic of y_a(t)');
% ylabel('2nd Harmonic');xlabel('t');xline(0);yline(0);

% stem(n/9,f(3),'b.');
% title('Third Harmonic of y_a(t)');
% ylabel('3rd Harmonic');xlabel('t');xline(0);yline(0);
