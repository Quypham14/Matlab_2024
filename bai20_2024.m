function [circumference, area] = bai20_2024()

    % Bán kính c?a ???ng tròn
    r = 3;

    % Tính chu vi và di?n tích
    circumference = 2 * pi * r;
    area = pi * r^2;

    % V? ???ng tròn
    theta = linspace(0, 2*pi, 100);
    x = r * cos(theta);
    y = r * sin(theta);

    figure;
    plot(x, y, 'b', 'LineWidth', 2);
    axis equal;
    title('Duong tron');
    xlabel('X');
    ylabel('Y');
    
    % Hi?n th? k?t qu? v?i 5 s? sau d?u ph?y
    disp(['Ban kinh duong tron: ', num2str(r)]);
    disp(['Chu vi duong tron: ', sprintf('%.5f', circumference)]);
    disp(['Dien tich duong tron: ', sprintf('%.5f', area)]);
end
