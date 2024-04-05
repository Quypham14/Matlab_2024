function [t, rz_waveform] = bai34_2024(bit_sequence, bit_rate)

    t_bit = 0:1/bit_rate:length(bit_sequence)-1/bit_rate;
    

    rz_waveform = [];
    for i = 1:length(bit_sequence)
        if bit_sequence(i) == 1
            rz_waveform = [rz_waveform ones(1, length(t_bit)/2) zeros(1, length(t_bit)/2)];
        else
            rz_waveform = [rz_waveform zeros(1, length(t_bit)/2) zeros(1, length(t_bit)/2)];
        end
    end
    

    t = linspace(0, length(bit_sequence)/bit_rate, length(rz_waveform));
    figure;
    plot(t, rz_waveform);
    title('Bieu do song ma RZ');
    xlabel('Thoi gian (s)');
    ylabel('Bien do');
    ylim([-0.5 1.5]);
end


