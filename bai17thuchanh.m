function so_ngay = bai17thuchanh(thang, nam)
    % Ki?m tra xem tháng có ph?i là tháng 2 không
    if thang == 2
        % Ki?m tra xem n?m có ph?i là n?m nhu?n không
        if mod(nam, 4) == 0 && (mod(nam, 100) ~= 0 || mod(nam, 400) == 0)
            so_ngay = 29;  % N?m nhu?n có 29 ngày trong tháng 2
        else
            so_ngay = 28;  % N?m không nhu?n có 28 ngày trong tháng 2
        end
    % Ki?m tra xem tháng có 30 ho?c 31 ngày không
    elseif ismember(thang, [1, 3, 5, 7, 8, 10, 12])
        so_ngay = 31;  % Tháng có 31 ngày
    else
        so_ngay = 30;  % Tháng có 30 ngày
    end
end


