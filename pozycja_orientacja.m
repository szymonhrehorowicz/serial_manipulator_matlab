k=size(theta)
n=k(2)
for i=1:n
    A=matrixA(l(i),lambda(i),alpha(i),theta(i));
eval(['A' num2str(i) '=A']) % zmienia nazwe ziemiennej
end

T30=A1*A2*A3
disp('wektor pozycji chwytaka wzgl�dem uk�adu podstawy')
p30=T30(1:3,4)
disp('macierz orientacji chwytaka wzgl�dem uk�adu podstawy')
R30=T30(1:3,1:3)

disp('metoda rekurencyjna')
r33 = [0 0 0 1]';
r32 = A3*r33;
r31 = A2*r32;
r30 = A1*r31;

B33 = [1 0 0;
       0 1 0;
       0 0 1];
B3 = transformationMatrix(theta(1,3), alpha(1,3));
B2 = transformationMatrix(theta(1,2), alpha(1,2));
B1 = transformationMatrix(theta(1,1), alpha(1,1));

B31 = B2*B3;
disp('Macierz orientacji: ');
B30 = B1*B2*B3
