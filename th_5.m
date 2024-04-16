% Chu?i bit
a = [1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];

% Mã hoá NRZ
nrz_signal = a;

% Mã hoá RZ 50%
rz_50_signal = [];
for i = 1:length(a)
    if a(i) == 1
        rz_50_signal = [rz_50_signal 1 0];
    else
        rz_50_signal = [rz_50_signal 0 0];
    end
end

% Mã hoá AMI
ami_signal = zeros(size(a));
ami_signal(a == 1) = 1;
prev_level = 1; % Start with positive level
for i = 1:length(ami_signal)
    if ami_signal(i) == 1
        prev_level = -prev_level;
        ami_signal(i) = prev_level;
    end
end

% Hi?n th? k?t qu?
disp('Chu?i bit ban ??u:');
disp(a);
disp('Mã hoá NRZ:');
disp(nrz_signal);
disp('Mã hoá RZ 50%:');
disp(rz_50_signal);
disp('Mã hoá AMI:');
disp(ami_signal);
