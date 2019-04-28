x = 0:0.1:10;
y = sigmf(x,[2 4]);
plot(x,y)
xlabel('sigmf, P = [2 4]')
ylim([-0.05 1.05])