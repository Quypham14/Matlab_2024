% Chu?i bit
a = [1 1 0 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 1 1 0];

% M� ho� NRZ
nrz_signal = a;

% M� ho� RZ 50%
rz_50_signal = [];
for i = 1:length(a)
    if a(i) == 1
        rz_50_signal = [rz_50_signal 1 0];
    else
        rz_50_signal = [rz_50_signal 0 0];
    end
end

% M� ho� AMI
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
disp('M� ho� NRZ:');
disp(nrz_signal);
disp('M� ho� RZ 50%:');
disp(rz_50_signal);
disp('M� ho� AMI:');
disp(ami_signal);
