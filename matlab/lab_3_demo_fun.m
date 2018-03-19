function y = lab3_demo_fun(t)
t = 0:0.01:8;

%t_zero = 0:0.01:1;
t_zerof = (t>=0)&(t<1); t_zero = t(t_zerof);
%t_sin = 1:0.01:2.5;
t_sinf = (t>=1)&(t<2.5); t_sin = t(t_sinf);
%t_noise = 2.5:0.01:4.5;
t_noisef = (t>=2.5)&(t<4.5); t_noise = t(t_noisef);
%t_const = 4.5:0.01:6.5;
t_constf = (t>=4.5)&(t<6.5); t_const = t(t_constf);
%t_saw = 6.5:0.01:8;
t_sawf = (t>=6.5)&(t<=8); t_saw = t(t_sawf);
%% Gabalveida signāla montāža
%% Sinuoīda
% y_sin = A0+A*sin(2*pi*f*(t-delay))
A0 = 0; A = 2.5; T = (2.5-1)/3.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%% Lineāri mainīgs signāls
% y_saw = k*(t_saw - delay)
% k = (yA - yB)/(tA - tB) - līknes slīpuma koeficients
% delay - lai noteiktu delay ir jāskatās  krustpunkts ar t/x asi (y=0)
k = (2.5-(-2.5))/(6.5-8); delay = 7.25;
y_saw = k*(t_saw - delay);
%% Konstantes signāls
y_const = zeros(size(t_const))+2.5;
%% Nuļļu signāls
y_zero = zeros(size(t_zero));
%% Trokšņa signāls
y_noise = rand(size(t_noise))*3-1.5;
%% Signālu apvienošana
y = [y_zero,y_sin,y_noise,y_const,y_saw];
plot(t,y)