a=randi([0 1] ,4,1);
bit_1_chan=mod(sum(a),2)==0;
cot_bit_1_chan=find(bit_1_chan);
b=bi2de(a);
a(:,cot_bit_1_chan)=0;
disp(b);
disp(a);
