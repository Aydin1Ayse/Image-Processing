
I = double(imread('cameraman.tif'));
[m,n] = size(I);
h = zeros(1,256);
for i=1:m
    for j=1:n        
        h( I(i,j) ) = h( I(i,j) ) + 1;
    end
end
% h = hist(I);
kh = zeros(1,256);
kh(1,1) = h(1,1);
for i=2:256
    kh(i) = kh(i-1) + h(i);
end
kh = kh/(m*n);
% kh = cumsum(h);
subplot(2,1,1);plot(h);
subplot(2,1,2);plot(kh);
       