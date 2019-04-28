function Konvolusyon_SabitMaske
    maske=[1 3 4
           3 4 3
           5 2 1];
    maske = maske ./ sum(sum(maske));
    [m,n] = size(maske);
    maskeT = zeros(m,n); % ici sifir dolu matris
    for i=1:m*n
        maskeT(i) = maske(m*n+1-i);
    end
    I = imread('cameraman.tif');
    [m,n] = size(I);
    % Konvolusyon
    S = zeros(m,n);
    for i=2:m-1
        for j=2:n-1
            R=I(i-1:i+1 , j-1:j+1);
            S(i,j) = sum(sum(maskeT.*R));
        end
    end
    subplot(1,2,1);imshow(I,[]);title('Orjinal Goruntu');
    subplot(1,2,2);imshow(S,[]);title('Konv. Sonucu');
end
