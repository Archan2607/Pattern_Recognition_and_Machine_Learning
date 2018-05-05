X=10+5*randn(1,1000);
x=(-15:0.1:15);
m=10;
sig=5;
p1=(x-m).^2;
p2=2*sig.^2;
p3=sig*sqrt(2*pi);
p4=1/p3;
p5=p1/p2;
p5=exp(-p5);
y=p4*p5;

figure;
plot(x,y,'LineWidth',2);
hold on;
histogram(X,'Normalization','pdf');


