% B�n k�nh c?a h�nh c?u
R = 3;

% T?o h�nh c?u
[x, y, z] = sphere;
x = R * x;
y = R * y;
z = R * z;

% V? h�nh c?u
figure;
surf(x, y, z, 'FaceAlpha', 0.5, 'EdgeColor', 'none');
title('Hinh cau ban kinh R = 3');
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal; % ??m b?o t? l? tr?c x, y, z ??ng ??u

% ??t gi?i h?n tr?c
axis([-R, R, -R, R, -R, R]);

% Hi?n th? l??i
grid on;
