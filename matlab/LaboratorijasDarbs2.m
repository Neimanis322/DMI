%2.laboratorijas darbs
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