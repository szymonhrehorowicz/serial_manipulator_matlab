%wartoœci zmienne w czasie - ustalone w danym po³o¿eniu
theta1=input('podaj wartoœæ k¹ta theta_1 [rad]: ')
theta2=input('podaj wartoœæ k¹ta theta_2 [rad]: ')
lambda3=input('podaj wartoœæ k¹ta lamda_3 [m]: ')
%wartoœci sta³e i zmienne manipulatora
disp('dane manipulatora')
l= [1 1 1]%l [m]
lambda =[0 1 lambda3] %lambda [m]
alpha= [3*pi/2 pi/2 0]%alpha[rad]
theta=[theta1 theta2 3*pi/2] %theta [rad]
dtheta=[1 2] %theta prim [rad/s]  
ddtheta=[1 2] %theta bis [rad/s^2]
dlambda=1 %lambda prim [m/s]
ddlambda=1 %lambda bi [m/s^2]

