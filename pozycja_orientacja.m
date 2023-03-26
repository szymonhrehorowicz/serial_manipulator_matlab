n=length(theta)

for i=1:n
    A=matrixA(l(i),lambda(i),alpha(i),theta(i));
    
    eval(['A' num2str(i) '=A'])
end

disp('macierz przejscia miedzy ukladem 3 i 0')
T30=A1*A2*A3
disp('wektor pozycji chwytaka wzgledem ukladu podstawy')
p30=T30(1:3,4)
disp('macierz orientacji chwytaka wzgledem ukladu podstawy')
R30=T30(1:3,1:3) % R30 -> B30

disp('metoda rekurencyjna')
r33 = [0 0 0 1]';
r32 = A3*r33;
r31 = A2*r32;
r30 = A1*r31;

B33 = [1 0 0;
       0 1 0;
       0 0 1];
% get:
% B1 = B10
% B2 = B21 
% B3 = B32
for i=1:n
    B = transformationMatrix(theta(1,i), alpha(1,i));
    eval(['B' num2str(i) '=B'])
end

disp('Macierz orientacji');
B30 = B1*B2*B3

