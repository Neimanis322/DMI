%2.laboratorijas darbs
%Raimonds Neimanis 171REB112 - REBCO4, 1.kurss
%1.uzd atrisinat vienadojumu a + e^b*(x^2)-a*x = 100
syms a b x e
y = solve(a+e^b*x^2-a*x == 100)
y = solve(a+e^b*x^2-a*x == 100,x)
pretty (y)
%2.uzd atrast F(x)-?
% f(x)=(cos(2x)*(5x+8)),  x[-4pi,4pi].
syms x 
y = cos(2*x)*(5*x+8)
y_int = int(y)
x = [-4*pi:0.01:4*pi];
y_vect = vectorize(y);
y_vect_int = vectorize(y_int);
y_num = eval(y_vect);
y_num_int = eval(y_vect_int);
plot(x,y_num,x,y_num_int)
ylim([-60 60]);
y_ltx = latex(y);
y_int_ltx = latex(y_int);
h = legend(['$',y_ltx,'$'],['$',y_int_ltx,'$']);
set(h,'Interpreter','latex')
%Secinajumi:Ko es saprastu?
%1)Pirmkart es atradiju ortusa savu lab.darba variantu.
%2)Ar komandiem 'syms' un 'solve' risinaju savu dotu vienadojumu a + e^b*(x^2)-a*x = 100
%3)2 uzdevuma bija dota izteiksme y = cos(2*x)*(5*x+8), kur vajag atrast F(x) -?]
%3,5) Jaintegre ar komandu y_int = int(y)
%4)Pec tam ar komandu x = [-4*pi:0.01:4*pi]; defineju x skaitla vektoru
%5)Talak javeic izteiksmes vektorizāciju(jaieliek "." pirms reizinajuma,dalijuma, utt)
%6)x vietā jāliek skaitļu vektors
%7)% eval ir reāla laika interpretatora funkcija
%8)uzzimesim ar komandu plot 
%8,5) uzliksim limitus y asei ar komandu ylim([-60 60]);

%9)Obligati japievieno anotaciju ar komandiem   y_ltx = latex(y);y_int_ltx
%= latex(y_int);h =
%legend(['$',y_ltx,'$'],['$',y_int_ltx,'$']);set(h,'Interpreter','latex') ,
%lai butu viegli orienteties grafika