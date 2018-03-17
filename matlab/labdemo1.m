%% M?r?jumu datu apstr?de
% Polinom? aproksim?cija - ja par 2 punktiem liel?ka par polinoma k?rtu,
% skat?sim lekcij?.
% 1.lab.d
diary lab1_diary.m
%doti m?r?jumu dati, kurus noform?sim k? vektorus
Um = [-1 0.3 1.5 2.5 3.2]
Im = [1.1 2.2 2.1 3.2 4.7]
%Grafiks
plot(Um,Im,'o-')
%Izn?k lausta l?nija, kas mums neder, t?p?c m??in?sim izveidot matem?tisku
%2.k?rtas polinoms
%y = C(1)*x.^2+C(2)*x+C(3)
%Polinoma koeficentus atrad?s POLYFIT
%sintakse:
%C = polyfit(x,y,N)
%N-polinoma karta
%C = polyfit(Um,Im,2)
%Lai ieg?tu labu l?niju
%noform??u v?l vienu x
U = -1:0.01:3.2
%%tad r??in??u y ar s?k?ku soli
%grafiku z?m?sim
%m?r?jumu dati ar "o"
%I=C(1)*U.^3+C(2)*U+C(3)
%pielaikotais polinoms ar l?niju
%plot(Um,Im,'o',U,I)
%lai ieg?tu lab?kus rezult?tus pa?emsim 3.k?rtas polinomu
C = polyfit(Um,Im,3)
I= C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4)
plot(Um,Im,'o',U,I)

%% izmantosim PolYVAL funkciju
%Ja punktu skaits ir par vienu lielaks par polinoma pak?pi, tad ir absol?ti
%prec?zi INTERPOLACIJA
%polyfit = polynomial fitting rekina koeficentus
%polyval = polynomial values rekina vertibas
C = polyfit(Um,Im,10);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% Ja sakar?ba ir line?ra
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% Vair?kas m?rijumu s??ijas
% Pie?emsim, ka mainm?m spriegumu, bet str?vu main?m 5 reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
      0.9 1.8 2.6 3.3 4.5;
      1.0 2.0 2.4 3.4 4.3;
      0.8 2.1 2.5 3.5 4.4;
      1.0 2.1 2.3 3.4 4.6];
% K? matlab z?m?s matricas?
%figure,plot(Um,Im,'o-')
%pareizi butu transponet
%figure,plot(Um,Im','o-')
%secinam, ka matlab zime pa stabi?iem
%lai polyfit var?tu apr??in?t vajag vid?jo
Ivid=mean(Im)
C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
%uzzimesim
%ar apl??iem apz?me?jam m??ijumu datus
%ar meln?m zvaigzn?m vid?jo
%ar l?niju apz?m?jam pielaikojot polinomo
plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')

%% K? att?lot vid?jo kvadr?tisko noz?mi

Ivid_kv_nov = std(Im);
errorbar(Um,Ivid,Ivid_kv_nov)

%% Datu ieg??ana no grafiski uzdotiem datiem
%Pie?emsim, ka mums ir grafika foto
%1.Ielasam JPG uz matlab
A = imread('image1.JPG');
B = imread('image2.JPG');
%2.Uzzim?sim
%figure(1),image(A);
%figure(2),image(B);
figure(2),image([0 14],[80 0],B);
set(gca,'YDir','normal');
[x,y] = ginput(8)