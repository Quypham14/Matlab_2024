% ??nh ngh?a h�m f(x, y)
f = @(x, y) 4*x - 1*y;

% ?i?u ki?n ban ??u
x0 = 0;
y0 = 1;

% Ch?n h v� kho?ng th?i gian t?i ?a
h = 0.01; % Ch?n m?t gi� tr? h kh�ng b?ng 0
xmax = max(1, 4);

% S? b??c l?p
n = ceil(xmax / h);

% Kh?i t?o m?ng ch?a k?t qu?
x = zeros(n, 1);
y_euler = zeros(n, 1);

% Ph??ng ph�p Euler
x(1) = x0;
y_euler(1) = y0;
for i = 2:n
    x(i) = x(i-1) + h;
    y_euler(i) = y_euler(i-1) + h * f(x(i-1), y_euler(i-1));
end

% Hi?n th? k?t qu?
disp('Ph??ng ph�p Euler:');
disp([x, y_euler]);
