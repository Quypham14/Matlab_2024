% ??nh ngh?a c?u trúc color
color = struct('red', [], 'blue', [], 'green', []);

% T?o m?t tr??ng 1x20 c?a c?u trúc color
colorArray(1:20) = color;

% Kh?i t?o các thành ph?n c?a c?u trúc colorArray
for i = 1:20
    colorArray(i).red = 'yes';
    colorArray(i).blue = 'no';
    colorArray(i).green = [0, 256, 0];
end
disp(colorArray);
