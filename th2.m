% B??c 1: T?o t�n hi?u y = e^x tr�n kho?ng [-4, 4]
x = linspace(-4, 4, 1000);  % T?o vector x t? -4 ??n 4 v?i 1000 ?i?m
y = exp(x);  % T?o t�n hi?u y = e^x

% B??c 2: L??ng t? ho� t�n hi?u
quantization_levels = 16;  % S? m?c l??ng t?
quantization_step = (max(y) - min(y)) / quantization_levels;  % B??c l??ng t?
quantized_y = round(y / quantization_step) * quantization_step;  % L??ng t? ho�

% B??c 3: M� h�a gi� tr? l??ng t? th�nh c�c m� l??ng t?
quantization_codes = round(quantized_y / quantization_step);

% B??c 4: V? t�n hi?u tr??c v� sau khi l??ng t? ho� tr�n c�ng m?t h�nh
figure;
subplot(2,1,1);
plot(x, y, 'b', 'LineWidth', 1.5);  % V? t�n hi?u tr??c l??ng t? ho�
title('T�n hi?u tr??c l??ng t? ho�');
xlabel('x');
ylabel('y');

subplot(2,1,2);
plot(x, quantized_y, 'r', 'LineWidth', 1.5);  % V? t�n hi?u sau l??ng t? ho�
title('T�n hi?u sau l??ng t? ho�');
xlabel('x');
ylabel('y');
