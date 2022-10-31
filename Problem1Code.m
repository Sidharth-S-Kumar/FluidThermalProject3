%ME3:492 Project 3 Kumar, Sidharth, Thomas,Mathew
%Constants/Givens/assumptions
rho = 1.69;%slug/ft^3
mu = 2.87E-5 ; %lbf*s/ft
Qtot = 100; %GPM
Qtot = Qtot*0.0022280092365745; %CFS
D1 = .1723; %ft
D2 = .1342; %ft
K1 = 12.1; 
K2 = 2.8; 
Pb = 10; %psig
A1 = (pi*D1^2)/4;
A2 = (pi*D2^2)/4 ;

%Flow Rate initial assumption 
Q1i= Qtot*(A1/(A1+A2);
Q2i = Qtot-Q1i; 