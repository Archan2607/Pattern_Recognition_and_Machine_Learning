X=randn(1,1000);
x=(-3:0.1:3);
m=0;
sig=1;
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


