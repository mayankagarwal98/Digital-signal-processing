images = dir('dataset/*.jpg');
data = length(images);
A = ones(data,196608);
for i=1:data
    Z = imread(strcat('dataset/',images(i).name));
    A(i,:) = Z(:);
end
MeanA = mean(A);
A = A - MeanA;
P = A*A';
[V,D] = eig(P);
dim =35;
F = normc(A'*V);
EV = F(:,520-dim+1:520);
T = A*EV;
% scatter3(T(:,1),T(:,2),T(:,3));
% scatterplot(T);
B=T*EV';
B = uint8(B+MeanA);
A = uint8(A+MeanA);
X = B(2,:);
Y = A(2,:);
X = reshape(X,[256,256,3]);
Y = reshape(Y,[256,256,3]);
subplot(1,2,1), imshow(Y);
subplot(1,2,2), imshow(X);