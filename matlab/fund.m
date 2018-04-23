function fx = fund(UR)
%a=1; i0=1; Us=1; R=1;
global Us a i0 R
fx = - 1/R - a*i0*exp(-a*(UR - Us));