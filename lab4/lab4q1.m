syms t;
y1(t) = piecewise((mod(t,18)>=7) & (mod(t,18)<10),8,0);

y1n = nan(1,360);
for i = -40:319
    y1n(i+41) = y1(i/10) ;
end
n1 = (1:360)/10-4.1;
% stem(n1,y1n,'.');title('Discrete y_a(t) with T_s = 1/10
% s');ylabel('y[n]');xlabel('n');xline(0);yline(0);


syms k
% b(k) = cos(11*pi*k/9) - cos(8*pi*k/9);
% c(k) = 1i*(sin(11*pi*k/9) - sin(8*pi*k/9));

a(k) = 4 * (exp(k*1i*22*pi/18)-exp(k*1i*16*pi/18)) / (k*pi*1i);

a_k=nan(1,179);
for m = 1:179
    a_k(m)=a(m);
end
a_k2 = a_k(end:-1:1);
ak = [a_k2, 4/3, a_k];

nk1 = (1:359)-180;

% stem(nk1*2*pi/18,real(ak),'r.');
% title('Real Part of the Spectrum Plot of y_a(t)');
% ylabel('Re{a_k}');xlabel('[rad/s]');xline(0);yline(0);
% xlim([-15 15])

% stem(nk1*2*pi/18,imag(ak),'b.')
% title('Imaginary Part of the Spectrum Plot of y_a(t)');
% ylabel('Im{a_k}');xlabel('[rad/s]');xline(0);yline(0);
% xlim([-15 15])

n = -40:319;
f(k) = a(k)*exp(1i*pi*k*n/81);

syms a
zn(a) = 4/3 + symsum(f,k,[-a -1]) + symsum(f,k,[1 a]);

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


% stem(n/9,ones(1,length(n))*4/3,'b.');
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
