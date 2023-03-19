kinematic_pairs = 3;

DHTable = zeros(4, kinematic_pairs);

prompts = ["theta" "lambda" "l" "alpha"];

for i = 1:kinematic_pairs
    for j = 1:4
        DHTable(j,i) = input("Podaj wartosc wspolrzednej " + prompts(j) + " " + i + " przejscia: ");
    end
end

A_3 = homogeneousTransformationMatrix(DHTable(1,3), DHTable(2,3), DHTable(3,3), DHTable(4,3));
A_2 = homogeneousTransformationMatrix(DHTable(1,2), DHTable(2,2), DHTable(3,2), DHTable(4,2));
A_1 = homogeneousTransformationMatrix(DHTable(1,1), DHTable(2,1), DHTable(3,1), DHTable(4,1));

T_3_0 = A_1.*A_2.*A_3;

r_3_3 = [0 0 0 1]';
r_3_2 = A_3.*r_3_3;
r_3_1 = A_2.*r_3_2;
r_3_0 = A_1.*r_3_1;

B_3_3 = [1 0 0;
         0 1 0;
         0 0 1];
B_3_2 = transformationMatrix(DHTable(1,3), DHTable(4,3));
B_3_1 = B_3_2.*B_3_3;
B_3_0 = B_3_1.*B_3_2.*B_3_3;

V_3_3 = [0 0 0 0]';
V_3_2 = A_3.*r_3_3;
V_3_1 = A_2.*r_3_2 + A_2.*V_3_2;
V_3_0 = A_1.*r_3_1 + A_1.*V_3_1;