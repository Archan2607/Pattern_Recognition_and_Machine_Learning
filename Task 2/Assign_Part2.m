%Generating Random data
U = 5 + 20*randn(1,200);X = 10 + 15*randn(1,200);Y = 20 + 25*randn(1,200);
%Calculating means of all the three variables
mU = mean(U);mX = mean(X); mY = mean(Y);
%Calculating Variances of all the three variables
vU = var(U); vX = var(X); vY = var(Y);
%Generating 40 random numbers
Z = random('unif',0,15,[1,40]);
%Taking apriori probabilities
p1 = 0.10; p2 = 0.25;p3 = 0.31; p4 = 0.4;p5 = 0.5; p6 = 0.29;p7 = 0.33;p8 = 0.4; p9 = 0.35;
for i = 1:40
    lhs1(i) = p1 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX));
    rhs1(i) = p2 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    Uhs1(i) = p3 * ((exp(-((Z(i)-mU)^2)/(2*vU)))/sqrt(2*pi*vU));
    if lhs1(i)>=rhs1(i) && lhs1(i)>=Uhs1(i)
       ar1(i) = 1;%Class 1
    elseif rhs1(i)>=Uhs1(i)
        ar1(i) = 2;%Class 2
    else
        ar1(i) = 3;%Class 3
    end
end
for i = 1:40
    lhs2(i) = p4 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX));
    rhs2(i) = p5 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    Uhs2(i) = p6 * ((exp(-((Z(i)-mU)^2)/(2*vU)))/sqrt(2*pi*vU));
    if lhs2(i)>=rhs2(i) && lhs2(i)>=Uhs2(i)
       ar2(i) = 1;%Class 1
    elseif rhs2(i)>=Uhs2(i)
        ar2(i) = 2;%Class 2
    else
        ar2(i) = 3;%Class 3
    end
end
for i = 1:40
    lhs3(i) = p7 * ((exp(-((Z(i)-mX)^2)/(2*vX)))/sqrt(2*pi*vX));
    rhs3(i) = p8 * ((exp(-((Z(i)-mY)^2)/(2*vY)))/sqrt(2*pi*vY));
    Uhs3(i) = p9 * ((exp(-((Z(i)-mU)^2)/(2*vU)))/sqrt(2*pi*vU));
    if lhs3(i)>=rhs3(i) && lhs3(i)>=Uhs3(i)
       ar3(i) = 1;%Class 1
    elseif rhs3(i)>=Uhs3(i)
        ar3(i) = 2;%Class 2
    else
        ar3(i) = 3;%Class 3
    end
end
 