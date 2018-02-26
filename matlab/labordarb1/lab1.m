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
