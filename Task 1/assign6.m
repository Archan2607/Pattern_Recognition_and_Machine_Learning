m = [0 0];
Sig = [0.25 0.3; 0.3 1];
x1 = -3:0.1:3; 
x2 = -3:0.1:3;
[X1,X2] = meshgrid(x1,x2);
K = mvnpdf([X1(:) X2(:)],m,Sig);
K = reshape(K,length(x2),length(x1));
surf(x1,x2,K);
caxis([min(K(:))-.5*range(K(:)),max(K(:))]);
axis([-3 3 -3 3 0 .4])
xlabel('x1');
ylabel('x2'); 
zlabel('Probability Density');
