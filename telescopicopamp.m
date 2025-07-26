% fixed variables
vsdsatpmos=1.25/2;
vdsatnmos=1.25/3;
lambdapmos=0.2;
lambdanmos=0.1;
Kppmos=30 * 10^-6;
Kpnmos= 60*10^-6;
Vto=0.7;

ids0=100*10^-6;
ids=ids0/2;

% Calculate transconductance values
gm32 = 2*ids / vsdsatpmos;
gm58 = 2*ids / vdsatnmos;
gm7 = 2*ids / vdsatnmos;
gm9= 2*ids0/(vdsatnmos);

rds32=1/(lambdapmos*ids);
rds58=1/(lambdanmos*ids);

woverl32= gm32^2/(2*Kppmos*ids);
woverl58= gm58^2/(2*Kpnmos*ids);
woverl9=gm9^2/(2*Kpnmos*ids0);
    
vgs9= sqrt(2*ids0/(Kpnmos*woverl9))+Vto;
vg78= sqrt(2*ids/(Kpnmos*woverl58))+Vto+0.41;
vg56= sqrt(2*ids/(Kpnmos*woverl58))+Vto+0.82;
vg43=4.375-sqrt(2*ids/(Kppmos*woverl32))-Vto;

gain=gm7*(gm32*rds32*rds32*rds58*rds58*gm58/(gm32*rds32*rds32+rds58*rds58*gm58));
db=38.56;
gainsimulated= (10^(db/20));
%folded cascode tsmc:
%-28dB --> CM gain
% 50dB --> DM gain