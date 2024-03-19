function result = bai22_2024(a, b, N)
    % a v� b l� c�c ??u m�t c?a kho?ng c?n t�ch ph�n
    % N l� s? l??ng ?i?m chia kho?ng

    % K�ch th??c m?i ?o?n nh?
    h = (b - a) / N;

    % T�nh gi� tr? t?i c�c ?i?m gi?a ?o?n nh?
    midpoints = a + h/2 : h : b - h/2;
    function_values = f(midpoints);

    % T�nh t?ng t�ch ph�n b?ng ph??ng ph�p midpoint
    result = h * sum(function_values);
end

% H�m c?n t�ch ph�n
function y = f(x)
    % ??t h�m c?n t�ch ph�n ? ?�y, v� d?:
    y = 4 .* x.^3 .* 2 .* exp(x) .* cos(x);
end
