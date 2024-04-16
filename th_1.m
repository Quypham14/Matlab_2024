% Chu k? c?a t�n hi?u (trong ??n v? th?i gian)
T = 4;

% Bi�n ?? c?a t�n hi?u
amplitude = 1.5 * 4;

% S? m?u l?y m?u m?i chu k?
samples_per_cycle = 32;

% T?n s? l?y m?u
sampling_frequency = samples_per_cycle / T;

% Th?i gian m?u
t = 0 : 1/(sampling_frequency) : T;

% T�n hi?u sin
signal = amplitude * sin(2 * pi * t / T);

% V? t�n hi?u tr??c l?y m?u
figure;
plot(t, signal);
title('T�n hi?u sin tr??c l?y m?u');
xlabel('Th?i gian');
ylabel('Amplitude');

% L?y m?u t�n hi?u
sampled_signal = signal(1:samples_per_cycle:end);

% T?o th?i gian l?y m?u
t_sampled = 0 : T/(length(sampled_signal)-1) : T;

% V? t�n hi?u sau khi l?y m?u
figure;
stem(t_sampled, sampled_signal);
title('T�n hi?u sau l?y m?u');
xlabel('Th?i gian');
ylabel('Amplitude');
