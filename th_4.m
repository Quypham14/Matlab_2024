% B??c 1: T?o tín hi?u y = e^x trên kho?ng [-4, 4]
x = linspace(-4, 4, 1000);  % T?o vector x t? -4 ??n 4 v?i 1000 ?i?m
y = exp(x);  % T?o tín hi?u y = e^x

% B??c 2: Áp d?ng lu?t µ ?? xác ??nh giá tr? l??ng t? cho m?i m?c l??ng t?
mu = 255;  % Tham s? µ
quantization_levels = mu * log(1 + abs(y) / max(abs(y)));  % Tính giá tr? l??ng t?

% B??c 3: Th?c hi?n l??ng t? hoá cho tín hi?u d?a trên các giá tr? l??ng t? ?ã xác ??nh
quantized_y = sign(y) .* quantization_levels;  % L??ng t? hoá

% B??c 4: Mã hóa giá tr? l??ng t? thành các mã l??ng t?
quantization_codes = round(quantized_y ./ quantization_levels);

% B??c 5: V? tín hi?u tr??c và sau khi l??ng t? hoá trên cùng m?t hình
figure;
subplot(2,1,1);
plot(x, y, 'b', 'LineWidth', 1.5);  % V? tín hi?u tr??c l??ng t? hoá
title('Tín hi?u tr??c l??ng t? hoá');
xlabel('x');
ylabel('y');

subplot(2,1,2);
plot(x, quantized_y, 'r', 'LineWidth', 1.5);  % V? tín hi?u sau l??ng t? hoá
title('Tín hi?u sau l??ng t? hoá');
xlabel('x');
ylabel('y');
