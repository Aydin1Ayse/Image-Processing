clear; close all; clc; 

I = imread('D:resim/saat.jpg');
k =2; % k oranin buyult
[m,n,d] = size(I); % I goruntusunu satir ve sutun degerlerini alir
if d>1 % renkliyse
    I = rgb2gray(I); %gri yap
end
A = zeros(k*m,k*n);
%for i=1:m
   % Ai = (i-1)*k+1;
    %for j=1:n        
      %  Aj = (j-1)*k+1;
       % A(Ai,Aj) = I(i,j);
   % end
%end
%imtool(A,[])

%bosluklari doldur
%piksel cogullama
 for i=1:k:k*m
     for j=1:k:k*n
         A(i:i+k-1,j:j+k-1) = A(i,j);
    end
 end

%interpolasyon
for i=1:k:k*m-1
    for j=1:k:k*n-1
        for k1=i:i+k-1
            for k2=j:j+k-1
                 C =[A(i,j);
                     A(i,j+k);
                     A(i+k,j);
                     A(i+k,j+k)];
                 i1= i; j1=j;
                 i2= i+k; j2=j+k;
                B = [i1 j1 i1*j1 1;
                     i1 j2 i1*j2 1;
                     i2 j1 i2*j1 1;
                     i2 j2 i2*j2 1];
                     
                x = invB(B'*B)*(B'*B)*C;
                a=x(1,1); b=x(2,1); c=x(3,1);d=x(4,1);
                A(k1,k2) = a*k1+b*k2+c*k1*k2+d;
            end
        end
    end
end

figure;imshow(I);title('orjinal');
figure;imshow(A,[]);title([int2str(k),' kat buyultulmus']);
