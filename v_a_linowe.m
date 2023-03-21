for  i=1:n;
    Q=macierzQ(dtheta(i));
    eval(['Q' num2str(i) ' =Q']);
    dA=macierzQ(dtheta(i))*matrixA(l(i),lambda(i),alpha(i),theta(i));
    eval(['dA' num2str(i) ' =dA' '*Q' num2str(i) ]);% uwaga bêd¹ modyfikacje na podstawie nagrania 
end

disp('prêdkoœci liniowe')
V33=[0 0 0 0]'
V32=dA3*r33
V31=dA2*r32+A2*V32
V30=dA1*r31+A1*V31

%nale¿y dopisaæ przyspieszenia liniowe


