%ME3492 Project 3 Kumar, Sidharth, Thomas,Mathew
%Constants/Givens/assumptions
SG= 0.823; 
mu= 1.64E-3;
rho = SG*1000;%kg/m^3
e= 1.5E-4;
Qtot = 2; %L/s
Qtot = Qtot*0.001; %CMS
D1 = 2.604E-2; %m
D2 = 1.994E-2; %m
L1 = 50; %m
L2 = 30; %m
K1 = 10+6*.31; 
K2 = 70+2*.31; 
Pb = 200; %kpa
A1 = (pi*D1^2)/4;
A2 = (pi*D2^2)/4 ;
Q1= Qtot*(A1/(A1+A2));
Qtotnew = 0; 
count = 0;
%Qtotnew<=.999*Qtot||Qtotnew>=1.001*Qtot
while(Qtotnew<=.9999*Qtot||Qtotnew>=1.0001*Qtot)
%Flow Rate initial assumption 
count = count +1; 
Q2 = Qtot-Q1; 

V1 = Q1/A1;
V2 = Q2/A2; 

Re1 = (rho*V1*D1)/mu;
Re2 = (rho*V2*D2)/mu;

f1 = .25/(log10((e/3.7*D1)+5.74/(Re1^.9))^2);
f2 = .25/(log10((e/3.7*D2)+5.74/(Re2^.9))^2);

p = (f1*L1*D1^-1+K1)*(rho*V1^2*.5);

V2 = (2*p*rho^-1*((f2*L2*D2^-1)+K2)^-1)^.5;

Q2 = A2*V2;
Qtotnew = Q1+Q2;
if(Qtotnew<=.9999*Qtot||Qtotnew>=1.0001*Qtot)
    Q1= (Q1/Qtotnew)*Qtot;
end
end 
Pa = Pb + p; 