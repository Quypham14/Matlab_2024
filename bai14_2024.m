% Vector t?n s? w t? 0.01 ??n 5 v?i c? b??c 0.01 rad/s
w = 0.01:0.01:5;

% Hàm truy?n c?a b? tích phân
H1 = 1./(1i * w);

% Hàm truy?n c?a ph?n t? tr? th?i gian b?c 1
H2 = 1./(1 + 1i * w);

% V? ?? th? biên ?? và pha trên cùng m?t hình
figure;

subplot(2, 1, 1);
plot(w, abs(H1), 'b', 'LineWidth', 2);
hold on;
plot(w, abs(H2), 'r', 'LineWidth', 2);
title('Do thi bien do');
xlabel('Tan so (rad/s)');
ylabel('Bien do');
legend('|H_1(j\omega)|', '|H_2(j\omega)|');
grid on;

subplot(2, 1, 2);
plot(w, angle(H1), 'b', 'LineWidth', 2);
hold on;
plot(w, angle(H2), 'r', 'LineWidth', 2);
title('Do thi pha');
xlabel('Tan so (rad/s)');
ylabel('Pha (rad)');
legend('arg(H_1(j\omega))', 'arg(H_2(j\omega))');
grid on;
