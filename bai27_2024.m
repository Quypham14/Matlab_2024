function bai27_2024()
    function dydt = h(t, y, R, C)
        % Hàm dy/dt
        dydt = -1/(R*C) * y + 1/(R*C) * u1(t);
    end

    function u = u1(t)
        % Hàm b?c ??n v?
        u = ones(size(t));
    end

    % Th?i gian b?t ??u và k?t thúc
    t_start = 0;
    t_end = 3;

    % Các thông s?
    R = 10e3; % Ohm
    C = 4.7e-6; % Farad

    % ??nh ngh?a hàm s? d?ng ode45
    ode45_func = @(t, y) h(t, y, R, C);

    % Tính nghi?m b?ng ph??ng pháp Runge-Kutta b?c 4
    [t, y] = RungeKutta4(@h, [t_start, t_end], 0, R, C);

    % Tính nghi?m b?ng hàm ode45
    [t_ode45, y_ode45] = ode45(ode45_func, [t_start, t_end], 0);

    % V? ?? th?
    figure;

    % ?? th? Runge-Kutta b?c 4
    subplot(2,1,1);
    plot(t, y, '-o', 'DisplayName', 'RK4 Solution');
    xlabel('Thoi gian (s)');
    ylabel('Dien ap (V)');
    title('RK4 Solution');
    legend();
    grid on;

    % ?? th? ode45
    subplot(2,1,2);
    plot(t_ode45, y_ode45, '--', 'DisplayName', 'ode45 Solution');
    xlabel('Thoi gian (s)');
    ylabel('Dien ap (V)');
    title('ode45 Solution');
    legend();
    grid on;
end

function [t, y] = RungeKutta4(func, t_span, y0, R, C)
    % Hàm tính nghi?m s? d?ng ph??ng pháp Runge-Kutta b?c 4
    h = 0.01; % B??c th?i gian
    t = t_span(1):h:t_span(2);
    n = length(t);
    y = zeros(1, n);
    y(1) = y0;
    for i = 1:n-1
        k1 = h * func(t(i), y(i), R, C);
        k2 = h * func(t(i) + h/2, y(i) + k1/2, R, C);
        k3 = h * func(t(i) + h/2, y(i) + k2/2, R, C);
        k4 = h * func(t(i) + h, y(i) + k3, R, C);
        y(i+1) = y(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
    end
end
