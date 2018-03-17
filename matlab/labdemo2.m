%% Simbolisko main?go defin??ana ar vair?kiem main?gajiem
syms a1 b1 c1 d1 a2 b2 c2 d2;

A = [a1, b1
     c1, d1];
B = [a2, b2,
     c2, d2];
 A.*B
 
 syms a b c d real %main?gie ir ?sti
 
%% Simbolisko main?go defin??ana
x = sym('x');
sqrt(x^2)

x = sym('x','positive')

sqrt(x^2)

%% Simbolisko matricu defin??ana
A = sym('A',[2 2])
B = sym('B%d%d',[2 2])

%% Simbolisk?s konstantes 
delta = sym('1/10')

gamma = sym(1/10,'f')

omega = sym(1/10,'e')
% piem?rs ar simb. konstant?m

A = hilb(3)
sym(A)

%% Atvasin??ana
syms x y
diff(x^2)

% Parci?li
z = x^2+y^3
diff(z,y)

% Dauzk?rt?gi atvasin?jumi
diff(z,x,2)
diff(diff(z,x,2),y,2)

%% Integr??ana
% Nenoteiktais
syms x y
int(x^3)
z = x^6+y^5
int(z,x)
% Noteiktais
sym x
y = x
int(y,x,0,5)

%% Robe?as
syms x 
limit(1/(x-1),x,1,'right')

%% Neline?ru vien?dojumu risin?jums
% (x-2)(x-3) = 0 
% x^2 -5x +6 = 0
syms x 
solve(x^2-5*x+6,x)

%% Izteiksmju vienk?r?ojumi
syms x 
y = sin(x)^2+cos(x)^2
simplify(y)
% citi vienk?r?ojumu veidi
f = (x-1)*(x-2)*(x-5)
expand(f) % atver iekavas
factor(f)

syms x 
h = x^5+x^4+x^3+x^2+x
horner(h)

% substit?cijas
syms x y 
z = x^2+y^3
subs(z,y,5*x)

%% Rezult?tu grafisk? att?lo?ana
syms x 
y = x^3-6*x^2+11*x-6
ezplot(y,[-4 4])

%% Skaist?ka formulu att?lo?ana
syms x 
 y = (x-1)*(x-2)^2/((x-3)*(x-6))
 pretty(y)
%% Skaist?ka formulu att?lo?ana - (2)
y2 = latex(y)
y3 = ['$',y2,'$'];
text(0,0.5,y3,'Interpreter','latex','FontSize',32)

%% K? att?lot formulu (ar vienk?r?u plot)
% 1. dots
syms x
y = (x-1)*(x-2)/((x-3)*(x-4))
% 2. j?trod atvasin?jums
y_atv=diff(y)
y_atv = simplify(y_atv)
% 3. liksim x - skait?u vektoru
x = [-1:0.01:1];
% 4. j?veic izteiksmju vektoriz?cija
% liekam punkti?us vai...
y_vect = vectorize(y)
y_atv_vect = vectorize(y_atv)
% 5. j?liek x iek?? k? skait?u vektors
% copy paste
%y_num = %?eit iekop? funkciju
% izmantot eval interpretatoru
y_num = eval(y_vect);
y_atv_num = eval(y_atv_vect);
% 6. z?m?sim plot funkciju
plot(x,y_num,x,y_atv_num)
% anot?cija katrai l?knei
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h = legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
set(h,'Interpreter','latex')