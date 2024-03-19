function so_ngay = bai17thuchanh(thang, nam)
    % Ki?m tra xem th�ng c� ph?i l� th�ng 2 kh�ng
    if thang == 2
        % Ki?m tra xem n?m c� ph?i l� n?m nhu?n kh�ng
        if mod(nam, 4) == 0 && (mod(nam, 100) ~= 0 || mod(nam, 400) == 0)
            so_ngay = 29;  % N?m nhu?n c� 29 ng�y trong th�ng 2
        else
            so_ngay = 28;  % N?m kh�ng nhu?n c� 28 ng�y trong th�ng 2
        end
    % Ki?m tra xem th�ng c� 30 ho?c 31 ng�y kh�ng
    elseif ismember(thang, [1, 3, 5, 7, 8, 10, 12])
        so_ngay = 31;  % Th�ng c� 31 ng�y
    else
        so_ngay = 30;  % Th�ng c� 30 ng�y
    end
end


