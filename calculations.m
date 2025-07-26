% design specifications
% dc gain ~200


kpn= 260*10^-6;
kpp= 50*10^-6;
vtn=0.45;
vtp= 0.4;


w0=25;
l0=2;
w1=100;
l1=2;
woverl0=w0/l0;
vgs0=1.2;
ids0= 0.5* 100*10^-6* (w0/l0)*(vgs0-1)^2;
bandwidth=80000;
Cout=5*10^-12;
slewrate=ids0/Cout;
Rout=1/(2*pi*Cout*bandwidth);
ids1=ids0/2;
Rout1= 1/(2*0.02*ids1);
rds=Rout/2;
rds2=Rout1/2;
    
gain= sqrt(2*100*10^-6*(w1/l1)*ids1)*Rout1;



