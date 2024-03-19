% T?o d�y gi� tr? x t? 0 ??n 2*pi
x = linspace(0, 2*pi, 1000);

% T�nh gi� tr? c?a sin(x) v� cos(x)
y1 = sin(x);
y2 = cos(x);

% V? ?? th?
figure;
plot(x, y1, 'r', 'LineWidth', 2); % V? ?? th? sin(x) v?i m�u ?? v� ?? d�y n�t v? l� 2
hold on; % Gi? k?t qu? ?? th? hi?n t?i tr�n c�ng m?t plot
plot(x, y2, 'b', 'LineWidth', 2); % V? ?? th? cos(x) v?i m�u xanh v� ?? d�y n�t v? l� 2

% ?�nh d?u c�c ?i?m nguy�n l?n n?a chu k? c?a t�n hi?u
x_ticks = [0, pi/2, pi, 3*pi/2, 2*pi]; % C�c v? tr� nguy�n l?n n?a chu k? c?a x
y_ticks = [sin(x_ticks); cos(x_ticks)]; % Gi� tr? t??ng ?ng c?a sin(x) v� cos(x) t?i c�c v? tr� ?�
plot(x_ticks, y_ticks(1, :), 'ro', 'MarkerSize', 8); % ?�nh d?u ?i?m b?ng h�nh tr�n m�u ?? cho sin(x)
plot(x_ticks, y_ticks(2, :), 'bo', 'MarkerSize', 8); % ?�nh d?u ?i?m b?ng h�nh tr�n m�u xanh cho cos(x)

% Ghi ch� tr?c tung, tr?c ho�nh, t�n ?? th? v� t�n ???ng cong
xlabel('x'); % Ghi ch� tr?c ho�nh l� 'x'
ylabel('y'); % Ghi ch� tr?c tung l� 'y'
title('?? th? h�m sin(x) v� cos(x)'); % Ghi ch� t�n ?? th?
legend('sin(x)', 'cos(x)'); % Ghi ch� t�n ???ng cong t??ng ?ng
grid on; % B?t l??i

% Th�m l??i d?c ???ng cong
for i = 1:numel(x_ticks)
    line([x_ticks(i), x_ticks(i)], ylim, 'Color', 'k', 'LineStyle', '--', 'LineWidth', 1); % V? l??i d?c
end

hold off; % K?t th�c vi?c gi? k?t qu? ?? th?
