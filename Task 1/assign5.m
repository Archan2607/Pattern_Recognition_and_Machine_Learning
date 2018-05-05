x = random('bino',1000,0.03,[1,1000]);
for i = 1:1000
    p1 = randi(1000,10,1);
    p2 = x(p1);
    p3(i) = mean(p2);
end
figure;
histogram(p3);
figure;
histogram(x);
