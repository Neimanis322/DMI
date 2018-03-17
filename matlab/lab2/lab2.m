%% Simbolisko mainīgo definēšana ar vairākiem mainīgajiem
syms a1 b1 c1 d1 a2 b2 c2 d2;

A = [a1, b1
     c1, d1];
B = [a2, b2,
     c2, d2];
 A.*B
 
 syms a b c d real %mainīgie ir īsti
 
%% Simbolisko mainīgo definēšana
x = sym('x');
sqrt(x^2)

x = sym('x','positive')

sqrt(x^2)

%% Simbolisko matricu definēšana
A = sym('A',[2 2])
B = sym('B%d%d',[2 2])

%% Simboliskās konstantes 
delta = sym('1/10')

gamma = sym(1/10,'f')

omega = sym(1/10,'e')
% piemērs ar simb. konstantēm

A = hilb(3)
sym(A)

%% Atvasināšana
syms x y
diff(x^2)

% Parciāli
z = x^2+y^3
diff(z,y)

% Dauzkārtīgi atvasinājumi
diff(z,x,2)
diff(diff(z,x,2),y,2)

%% Integrēšana
% Nenoteiktais
syms x y
int(x^3)
z = x^6+y^5
int(z,x)
% Noteiktais
sym x
y = x
int(y,x,0,5)

%% Robežas
syms x 
limit(1/(x-1),x,1,'right')

%% Nelineāru vienādojumu risinājums
% (x-2)(x-3) = 0 
% x^2 -5x +6 = 0
syms x 
solve(x^2-5*x+6,x)

%% Izteiksmju vienkāršojumi
syms x 
y = sin(x)^2+cos(x)^2
simplify(y)
% citi vienkāršojumu veidi
f = (x-1)*(x-2)*(x-5)
expand(f) % atver iekavas
factor(f)

syms x 
h = x^5+x^4+x^3+x^2+x
horner(h)

% substitūcijas
syms x y 
z = x^2+y^3
subs(z,y,5*x)

%% Rezultātu grafiskā attēlošana
syms x 
y = x^3-6*x^2+11*x-6
ezplot(y,[-4 4])

%% Skaistāka formulu attēlošana
syms x 
 y = (x-1)*(x-2)^2/((x-3)*(x-6))
 pretty(y)
%% Skaistāka formulu attēlošana - (2)
y2 = latex(y)
y3 = ['$',y2,'$'];
text(0,0.5,y3,'Interpreter','latex','FontSize',32)

%% Kā attēlot formulu (ar vienkāršu plot)
% 1. dots
syms x
y = (x-1)*(x-2)/((x-3)*(x-4))
% 2. jātrod atvasinājums
y_atv=diff(y)
y_atv = simplify(y_atv)
% 3. liksim x - skaitļu vektoru
x = [-1:0.01:1];
% 4. jāveic izteiksmju vektorizācija
% liekam punktiņus vai...
y_vect = vectorize(y)
y_atv_vect = vectorize(y_atv)
% 5. jāliek x iekšā kā skaitļu vektors
% copy paste
%y_num = %šeit iekopē funkciju
% izmantot eval interpretatoru
y_num = eval(y_vect);
y_atv_num = eval(y_atv_vect);
% 6. zīmēsim plot funkciju
plot(x,y_num,x,y_atv_num)
% anotācija katrai līknei
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h = legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
set(h,'Interpreter','latex')