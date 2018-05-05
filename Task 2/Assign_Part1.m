%Generating Random Data
X = 10 + 20*randn(1,200);Y = 20 + 25*randn(1,200);
%Finding mean and Variance
mX = mean(X); mY = mean(Y);vX = var(X); vY = var(Y);
%Generating Random data
Z = random('unif',5,20,[1,40]);
%Apriori Probabilities
p1 = 0.5; p2 = 0.5;p3 = 0.3; p4 = 0.7;p5 = 0.7; p6 = 0.3;
for i = 1:40
    lhs1(i) = p1 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX)); rhs1(i) = p2 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    if lhs1(i)>=rhs1(i)
       ar1(i) = 1; %Class 1  
    else
        ar1(i) = 2;%Class 2
    end
end
for i = 1:40
    lhs2(i) = p3 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX)); rhs2(i) = p4 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    if lhs2(i)>=rhs2(i)
       ar2(i) = 1;%Class 1
    else
        ar2(i) = 2;%Class 2
    end
end
for i = 1:40
    lhs3(i) = p5 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX));  rhs3(i) = p6 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    if lhs3(i)>=rhs3(i)
       ar3(i) = 1;%Class 1
    else
        ar3(i) = 2;%Class 2
    end
end

 
