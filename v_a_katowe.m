for  i=1:n;
        omega=[0 0 dtheta(i) 0]';
    eval(['omega' num2str(i) ' =omega']); %mo¿na zastosowaæ inny sposób indeksowania 
    % podwojne indeksowanie
end

disp('prêdkoœci k¹towe')
omega10=omega1
omega20=omega10+A1*omega2
omega30=omega20+A1*A2*omega3

%uwaga! inne oznaczenia stosowane w pliku procedura zadania prostego kinematyki.pdf

%nale¿y dopisaæ przyspieszenia k¹towe

