function ketqua = bai21thuchanh(a, b, N)
    ketqua = 0;
    for i = 1:N
        ketqua = ketqua + (-2)^a / exp(-i);
    end
    % L?y b s? sau d?u ph?y c?a ketqua
    ketqua = round(ketqua * 10^b) / 10^b;
end
