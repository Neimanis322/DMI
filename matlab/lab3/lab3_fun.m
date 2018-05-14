%% 3 Laboratorijas darbs
% Raimonds Neimanis 171REB112 - REBCO4, 1.kurss
%Uzdevums bija izveidot gabalveidu signalu montažu, pēč atsevišķa varianta
%% Gabalveida sign?la mont???
%% Sinuso?da
%t_sin = 1:0.01:2.5;
% y_sin = A0+A*sin(2*pi*f*(t-delay))
%A0 = 0; A = -2.5; T = (2.5-1)/6; f = 1/T; delay = 1;
%y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%% Line?ri main?gs sign?ls
%t_saw = 0:0.01:1;
% y_saw = k*t(t_saw-delay)
%yA = 0; yB = 2; tA = 0; tB = 1; delay = 0;
%k = (yA-yB)/(tA-tB)  %l?knes sl?puma koeficents
% delay - lai noteiktu delayr ir j?skat?s krustpunkts ar t asi (y=0)
%y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%% Konstantes sign?ls
%t_const = 2.5:0.01:3.5;
%y_const = zeroes(1,1) - 2.5;
%y_const = ones(1,1)*2.5;
% nav korekti, ja t_const izmain?s, tad y_const nemain?sies
%y_const = zeros(size(t_const)); y_const = zeros(size(t_const));
%plot(t_const,y_const)
%% Nulles signals
%t_zero = 3.5:0.01:4;
%y_zero = zeros(size(t_zero)) -2.5;
%% trok??a sign?ls
%t_noise = 4:0.01:5.5;
%y_noise = rand(size(t_noise)) * 2.50 - 1.25;
%plot(t_noise,y_noise)
%% Sign?lu apvieno?ana
%t = [t_saw,t_sin,t_const,t_zero,t_noise];
%y = [y_saw,y_sin,y_const,y_zero,y_noise];
%plot(t,y)
%ylim([-3 3])
%grid on
function y = lab3_fun(t)
%t = 0:0.01:5.5;
%t_zero = 3.5:0.01:4;
t_zerof=(t>=3.5)&(t<4);t_zero = t(t_zerof);
%t_sin =1:0.01:2.5;
t_sinf=(t>1)&(t<2.5);t_sin=t(t_sinf);
%t_noise = 4:0.01:5.5;
t_noisef=(t>=4)&(t<=5.5);t_noise=t(t_noisef);
%t_const = 2.5:0.01:3.5;
t_constf=(t>=2.5)&(t<3.5);t_const=t(t_constf);
%t_saw = 0:0.01:1;
t_sawf = (t>=0)&(t<=1);t_saw=t(t_sawf);
%% sinusoīda
%y_sin=A0+A*sin(2*pi*f*(t-delay))
A0=0; A=-2.5; T = (2.5-1)/6; f = 1/T;
delay = 1;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%% Lineāri mainīgs signāls
% k = (yA-yB)/(tA-tB)
% slīpuma koeficients
k = (0-2)/(0-1);
delay = 0;
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%% konstantes signāls
y_const = zeros(size(t_const));
%plot(t_const,y_const)
%% nulles signāls
y_zero = zeros(size(t_zero))-2.5;
%plot(t_zero,y_zero)
%% trokšņa signāls
y_noise = 2.5*rand(size(t_noise))-1.25;
%plot(t_noise,y_noise)
%% signālu apvienošana
t = [t_saw,t_sin,t_const,t_zero,t_noise];
y = [y_saw,y_sin,y_const,y_zero,y_noise];
%plot(t,y)
%ylim([-3 3])
%grid on
%% Secinājumi
%Ko es sapratu? Ir doti 5 veidu signali, (sinusoida, lineari mainigs
%signals, konstantes signals, nuļu signals, trokšņa signals), kurus vajag
%novietot pareizi uz grafika.
%Ar komandu (t_sin;t_saw;t_const;t_zero;t_noise un y_sin; y_saw; y_const;
%y_zero; y_noise;) palīdzibu es devu atbilstoši koordināti manam grafikam.
%Pēc tam es apvienoju visus signalus ar komandiem t = [...] un y = [...]
%Un ar komandu plot, un grid on, mēs taisam grafiku.
%Bet tālak mums ir vajadzīgs parvietot šo signalu, lab3_fun, to daram ar
%komandu function y = lab3_demo_fun(t), taisam limits t asi (t =
%0:0.01:5.5;) un ar komandiem (t_zerof;t_sinf;t_noisef;t_constf;t_sawf mes
%taisam koordinatus no kurieniem un līdz kurienem būs mūsu signali, ka arī
%agrāk apvienojam visus signalus ar t = [...] un y = [...], ar komandu plot
%zimejam grafiku un mana gadijuma veidojam limits y asei. Viss mūsu
%funkcija ir gatava un strāda pareizi