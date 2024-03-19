function result = bai22_2024(a, b, N)
    % a và b là các ??u mút c?a kho?ng c?n tích phân
    % N là s? l??ng ?i?m chia kho?ng

    % Kích th??c m?i ?o?n nh?
    h = (b - a) / N;

    % Tính giá tr? t?i các ?i?m gi?a ?o?n nh?
    midpoints = a + h/2 : h : b - h/2;
    function_values = f(midpoints);

    % Tính t?ng tích phân b?ng ph??ng pháp midpoint
    result = h * sum(function_values);
end

% Hàm c?n tích phân
function y = f(x)
    % ??t hàm c?n tích phân ? ?ây, ví d?:
    y = 4 .* x.^3 .* 2 .* exp(x) .* cos(x);
end
