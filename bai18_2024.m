% ??nh ngh?a c?u tr�c color
color = struct('red', [], 'blue', [], 'green', []);

% T?o m?t tr??ng 1x20 c?a c?u tr�c color
colorArray(1:20) = color;

% Kh?i t?o c�c th�nh ph?n c?a c?u tr�c colorArray
for i = 1:20
    colorArray(i).red = 'yes';
    colorArray(i).blue = 'no';
    colorArray(i).green = [0, 256, 0];
end
disp(colorArray);
