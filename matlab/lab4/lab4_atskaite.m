%% 4.laboratorijas darbs
%% Raimonds Neimanis
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7;R8=8;
R= [R1+R2+R3 -R2 0;
    -R2 R2+R4+R5 -R5;
    0 -R5 R6+R5+R7];
% doti laika mainīgie signāli
t = 0:0.01:5.5;
E1 = sin(2*pi*5*t);
E2 = 7*zeros(size(t));
E3 = cos(2*pi*2*t);
E = [E1; -E2; -E3];
I = R\E;
% atrast IR5 -?
IR5 = I(3,:)-I(2,:);
UR5=IR5*R5;
PR5=UR5*R5;
plotyy(t,UR5,t,PR5)
legend('UR5','PR5')
ylabel('U,V')
% parabude
% Kirhofa sprieguma likums
% UR6+UR7+UR5=-E3
IR6=I(3,:);
UR6 = IR6*R6;
IR7 = I(3,:);
UR7 = IR7*R7;
Utst = UR6+UR7+UR5+E3;
figure,plot(t,Utst)