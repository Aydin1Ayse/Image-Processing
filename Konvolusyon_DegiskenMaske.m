function Konvolusyon_DegiskenMaske
    maske=[1 1 1
           1 1 1
           1 1 1];
    maske = maske ./ sum(sum(maske));
    [m,n] = size(maske);
    maskeT = zeros(m,n); % ici sifir dolu matris
    for i=1:m*n
        maskeT(i) = maske(m*n+1-i);
    end
    I = double(imread('cameraman.tif'));
    [r,c] = size(I);
    
    % Konvolusyon
    S = zeros(r,c);
    for i=1:r-m-1
        for j=1:c-n-1
            R=I(i:i+m-1 , j:j+n-1);
            S(i,j) = sum(sum(maskeT.*R));
        end
    end
    subplot(1,2,1);imshow(I,[]);title('Orjinal Goruntu');
    subplot(1,2,2);imshow(S,[]);title('Konv. Sonucu');

end