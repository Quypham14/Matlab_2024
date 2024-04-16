% B??c 1: T?o t�n hi?u y = e^x tr�n kho?ng [-4, 4]
x = linspace(-4, 4, 1000);  % T?o vector x t? -4 ??n 4 v?i 1000 ?i?m
y = exp(x);  % T?o t�n hi?u y = e^x

% B??c 2: �p d?ng lu?t � ?? x�c ??nh gi� tr? l??ng t? cho m?i m?c l??ng t?
mu = 255;  % Tham s? �
quantization_levels = mu * log(1 + abs(y) / max(abs(y)));  % T�nh gi� tr? l??ng t?

% B??c 3: Th?c hi?n l??ng t? ho� cho t�n hi?u d?a tr�n c�c gi� tr? l??ng t? ?� x�c ??nh
quantized_y = sign(y) .* quantization_levels;  % L??ng t? ho�

% B??c 4: M� h�a gi� tr? l??ng t? th�nh c�c m� l??ng t?
quantization_codes = round(quantized_y ./ quantization_levels);

% B??c 5: V? t�n hi?u tr??c v� sau khi l??ng t? ho� tr�n c�ng m?t h�nh
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
