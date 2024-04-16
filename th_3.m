% B??c 1: T?o tín hi?u y = e^x trên kho?ng [-4, 4]
x = linspace(-4, 4, 1000);  % T?o vector x t? -4 ??n 4 v?i 1000 ?i?m
y = exp(x);  % T?o tín hi?u y = e^x

% B??c 2: Chia kho?ng [-4, 4] thành các kho?ng con d?a trên lu?t A
num_segments = 8;  % S? l??ng kho?ng con
segments = linspace(-4, 4, num_segments + 1);  % T?o các ?i?m chia kho?ng

% B??c 3: Xác ??nh giá tr? l??ng t? cho m?i kho?ng con
quantization_levels = [0.2, 0.4, 0.8, 1.6, 3.2, 6.4, 12.8, 25.6];  % Giá tr? l??ng t? cho m?i kho?ng con

% B??c 4: Th?c hi?n l??ng t? hoá cho m?i kho?ng con
quantized_y = zeros(size(y));  % Kh?i t?o vector l??ng t? hoá
for i = 1:num_segments
    segment_indices = find(x >= segments(i) & x < segments(i + 1));  % L?y ch? s? c?a các ?i?m trong kho?ng con
    quantized_y(segment_indices) = round(y(segment_indices) / quantization_levels(i)) * quantization_levels(i);  % L??ng t? hoá
end

% B??c 5: Mã hóa giá tr? l??ng t? thành các mã l??ng t?
quantization_codes = round(quantized_y ./ quantization_levels);

% B??c 6: V? tín hi?u tr??c và sau khi l??ng t? hoá trên cùng m?t hình
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
