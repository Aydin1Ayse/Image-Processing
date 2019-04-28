clear; close all; clc; 

I = imread('cameraman.tif');
k = 2; % k oranin kucult
[m,n,d] = size(I); % I goruntusunu satir ve sutun degerlerini alir
if d>1 % renkliyse
    I = rgb2gray(I); %gri yap
end
% i=1:k:m; %alacagimiz satirlar
% j=1:k:n; %alacagimiz sutunlar
% A = I(i,j);
Ai=0;Aj=0;
for i=1:k:m
    Ai=Ai+1;
    for j=1:k:n
        Aj=Aj+1;
        A(Ai,Aj)=I(i,j);
    end
    Aj=0;
end

figure;imshow(I);title('orjinal');
figure;imshow(A);title([int2str(k),' kat kucultulmus']);

