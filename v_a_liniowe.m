for  i=1:n
    % Wybor macierzy Q ze wzgledu na rodzaj pary kinematycznej
    if dtheta == 0
        Q = macierzQprzesuwna(dlambda(i));
        dQ = macierzQprzesuwna(ddlambda(i));
    else
        Q = macierzQobrotowa(dtheta(i));
        dQ = macierzQobrotowa(ddtheta(i));
    end

    A = matrixA(l(i),lambda(i),alpha(i),theta(i));
    dA= Q * A;
    ddA = dQ*A + Q*dA;
    
    eval(['Q' num2str(i) ' =Q']);
    eval(['dQ' num2str(i) '=dQ']);
    eval(['dA' num2str(i) ' =dA']);
    eval(['ddA' num2str(i) ' =ddA']);
end

disp('Predkosci liniowe')
V33=[0 0 0 0]'
V32=dA3*r33
V31=dA2*r32+A2*V32
V30=dA1*r31+A1*V31

disp('Przyspieszenia liniowe')
a33 = [0 0 0 0]'
a32 = ddA3*r33
a31 = ddA2*r32 + 2*dA2*V32 + A2*a32
a30 = ddA1*r31 + 2*dA1*V31 + A1*a31
