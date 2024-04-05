x=randi([0 1],1,128);
bit_groups=reshape(x,32,4);
decimal_values=bi2de(bit_groups);
hist(x);
x1=round(rand