function lab5
global Us a i0 R
a = 1; R=1; i0=1;
% šeit ir jāliek savā diode attiecīgi jūsu uzdevuma
t=0:0.01:1;
Ust = 100*cos(2*pi*t); % šeit ir jālieks savs signāls lab3(t) 
URt = [];
for Us = Ust
    UR = newmet5;
    URt = [URt,UR];
end
plot(t,Ust,t,URt)

function x0 = newmet5(x0,epsilon)
if nargin == 0
    x0=0;
    epsilon = 1e-3;
end
delta = funx(x0)/fund(x0);
while abs(delta) > epsilon
    delta = funx(x0)/fund(x0);
    x0=x0-delta;
end

function fx = funx(UR)
global Us R i0 a
%i0 =1; a=1; Us=1; R=1;
fx = i0*(exp(a*(E-UR))-1)-(UR/R);

function fx = fund(UR)
global Us R i0 a
%funx atvasinajums
%a=1; i0=1; Us=1; R=1;
fx = - 1/R - a*i0*exp(a*(E - UR));