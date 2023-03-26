for  i = 1:n
    omega = [0 0 dtheta(i) 0]';
    epsilon = [0 0 ddtheta(i) 0]';

    eval(['omega' num2str(i) ' =omega']);
    eval(['epsilon' num2str(i) ' =epsilon']);
end

% omega1 = omega1,0
% omega2 = omega2,1
% omega3 = omega3,2

disp('prêdkoœci k¹towe')
omega0 = [0 0 0 0]'
omega10=omega1
omega20=omega10+A1*omega2
omega30=omega20+A1*A2*omega3

% epsilon1 = epsilon1,0
% epsilon2 = epsilon2,1
% epsilon3 = epsilon3,2

disp("przyspieszenia katowe")
Epsilon0 = [0 0 0 0]'
Epsilon10 = epsilon1
Epsilon20 = Epsilon10 + dA1 * omega2 + A1 * epsilon2
Epsilon30 = Epsilon20 + dA1 * A2 * omega3 + A1 * dA2 * omega3 + A1 * A2 * epsilon3