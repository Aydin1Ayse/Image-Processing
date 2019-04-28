clear; close; clc;

I=imread('D:/resim/balon.jpg');
k=15; % k oranýnda küçült
[m,n,d]=size(I);% I goruntusunun 
if d>1 % renkliyse
    rgb2gray(I);% gri yap
end
% i=1:k:m;
% j=1:k:n;
% A=I(i,j);
Ai=0;
Aj=0;
for i=1:k:m
    Ai=Ai+1;
    for j=1:k:n
        Aj=Aj+1;
        A(Ai,Aj)=I(i,j);
    end
   
end
figure;imshow(I);title('orjinal');
%figure;imshow(A),title('kucultulmus');
figure;imshow(A),title([int2str(k),'kat kucultulmus']);
