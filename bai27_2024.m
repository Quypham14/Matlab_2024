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
    [t, y] = ode45(ode45_func, [t_start, t_end], 0);

    % V? ?? th? k?t qu?
    figure;
    plot(t, y, '-o', 'DisplayName', 'RK4 Solution');
    hold on;

    % Tính nghi?m b?ng hàm ode45
    [t_ode45, y_ode45] = ode45(ode45_func, [t_start, t_end], 0);

    % V? ?? th? k?t qu? t? ode45
    plot(t_ode45, y_ode45, '--', 'DisplayName', 'ode45 Solution');
    xlabel('Time (s)');
    ylabel('Voltage (V)');
    title('Comparison of RK4 and ode45 Solutions');
    legend();
    grid on;
end
