%Raimonds Neimanis -REBCO4
A = imread('c.png');
B = imread('d.png');
figure(1),image(A),shg
figure(2),image(B),shg
figure(2),image([3.0 5.0],[50 0],B),
set(gca,'YDir','normal')
%[x,y] = ginput(8)
x =[3.3456    3.5260    3.6462    3.7202    3.7757    3.8451    3.9006    3.9514];
y =[1.0067    5.1031   13.2959   21.6351   27.9260   36.8504   42.5561   49.2859];
plot(x,y,'o-')
U = 3.3:0.01:3.95;
C = polyfit(x,y,2)
I = C(1)*U.^2+C(2)*U+C(3);
C = polyval(C,U);
plot(x,y,'o',U,I)
xlabel('Forward Voltage(V)')
ylabel('Forward Current(mA)')
title('Grafik1')
axis([3.0 5.0 0 50])
grid
%Secinajumi: Ko es saprastu?
%1)Pirmk?rt es iel?deju 2 grafiki matlab?, no farnell.com.
%2)P?c tam bija obligati apgriezt x un y asi, lai kad es iel?deju grafiku matlab? viss sakr?t.
%3)Nako?ais punkts, bija nolas?t 8 punktus un p?c tam uzz?met grafiku 
%4)Komanda polyfit apr??in? v?rt?bas un p?c tam bija iesp?jams izveidot 2
%pakapes polinomu.
%5)Ar komandu 'xlabel' es izveidoju nosaukumu x asei
%6)Ar komandu 'ylabel' es izveidoju nosaukumu y asei 
%7)Ar komandu 'title'  es devu ?im grafikam nosaukumu
%8)Galvenais secin?jums no ?aja lab.darba, ka jebkuru grafiku no internet?
%var apstr?dat ar programmu matlab, un ar to pa?u programmu ir
%iesp?jams izveidot tadu pa?u grafiku