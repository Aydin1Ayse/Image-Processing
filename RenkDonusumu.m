clear; clc; close;
I = double(imread('peppers.png'));
% imshow(uint8(I));
x = [155 47 58
     95 106 29
    247 217 180]';
b = [255 0 0
     0 255 0
    255 255 255]';
A = b*x' * inv(x * x');
[m,n,d] = size(I);
for i=1:m
    for j=1:n
        eskiResimPikseli = [I(i,j,1) I(i,j,2) I(i,j,3)];
        yeniResim(i,j,:) = eskiResimPikseli * A;         
    end
end
subplot(1,2,1);imshow(uint8(I),[]);
subplot(1,2,2);imshow(uint8(yeniResim),[]);