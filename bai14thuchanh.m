% T?o dãy giá tr? x t? 0 ??n 2*pi
x = linspace(0, 2*pi, 1000);

% Tính giá tr? c?a sin(x) và cos(x)
y1 = sin(x);
y2 = cos(x);

% V? ?? th?
figure;
plot(x, y1, 'r', 'LineWidth', 2); % V? ?? th? sin(x) v?i màu ?? và ?? dày nét v? là 2
hold on; % Gi? k?t qu? ?? th? hi?n t?i trên cùng m?t plot
plot(x, y2, 'b', 'LineWidth', 2); % V? ?? th? cos(x) v?i màu xanh và ?? dày nét v? là 2

% ?ánh d?u các ?i?m nguyên l?n n?a chu k? c?a tín hi?u
x_ticks = [0, pi/2, pi, 3*pi/2, 2*pi]; % Các v? trí nguyên l?n n?a chu k? c?a x
y_ticks = [sin(x_ticks); cos(x_ticks)]; % Giá tr? t??ng ?ng c?a sin(x) và cos(x) t?i các v? trí ?ó
plot(x_ticks, y_ticks(1, :), 'ro', 'MarkerSize', 8); % ?ánh d?u ?i?m b?ng hình tròn màu ?? cho sin(x)
plot(x_ticks, y_ticks(2, :), 'bo', 'MarkerSize', 8); % ?ánh d?u ?i?m b?ng hình tròn màu xanh cho cos(x)

% Ghi chú tr?c tung, tr?c hoành, tên ?? th? và tên ???ng cong
xlabel('x'); % Ghi chú tr?c hoành là 'x'
ylabel('y'); % Ghi chú tr?c tung là 'y'
title('?? th? hàm sin(x) và cos(x)'); % Ghi chú tên ?? th?
legend('sin(x)', 'cos(x)'); % Ghi chú tên ???ng cong t??ng ?ng
grid on; % B?t l??i

% Thêm l??i d?c ???ng cong
for i = 1:numel(x_ticks)
    line([x_ticks(i), x_ticks(i)], ylim, 'Color', 'k', 'LineStyle', '--', 'LineWidth', 1); % V? l??i d?c
end

hold off; % K?t thúc vi?c gi? k?t qu? ?? th?
