% T?o l??i chi?u x v� y v?i c? b??c 0.2 v� 0.1 t??ng ?ng
x = -2:0.2:2;
y = -1:0.1:1;

% T�nh gi� tr? c?a h�m x^2 + y^2 cho t?ng ?i?m tr�n l??i
[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;

% V? ?? th? 3D
figure;
surf(X, Y, Z);
title('Do thi ham x^2 + y^2');
xlabel('X');
ylabel('Y');
zlabel('x^2 + y^2');
