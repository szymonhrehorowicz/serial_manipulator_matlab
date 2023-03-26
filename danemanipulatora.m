%wartosci zmienne w czasie - ustalone w danym polozeniu
theta1 = input('podaj wartoœæ kata theta_1 [rad]: ')
theta2 = input('podaj wartoœæ kata theta_2 [rad]: ')
lambda3 = input('podaj wartoœæ przesuniecia lamda_3 [m]: ')
%wartosci stale i zmienne manipulatora
disp('dane manipulatora')
l = [1 1 1]                     %l [m]
lambda = [0 1 lambda3]          %lambda [m]
alpha = [3*pi/2 pi/2 0]         %alpha[rad]
theta = [theta1 theta2 3*pi/2]  %theta [rad]
dtheta = [1 2 0]                %theta prim [rad/s]  
ddtheta = [1 2 0]               %theta bis [rad/s^2]
dlambda = [0 0 1]               %lambda prim [m/s]
ddlambda = [0 0 1]              %lambda bi [m/s^2]