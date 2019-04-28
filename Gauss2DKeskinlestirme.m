function Gauss2DKeskinlestirme
    Z = fspecial('gauss',5,5);
    I = double(imread('cameraman.tif')); % orjinal goruntu
    J = conv2(I,Z,'same'); % gauss ile filtrelenmis goruntu
    U = I-J;      % unsharped = kenar
    Keskin = I + U; % keskinlesmis goruntu
    subplot(2,2,1);imshow(I,[]);
    subplot(2,2,2);surface(Z);
    subplot(2,2,3);imshow(U,[]);
    subplot(2,2,4);imshow(Keskin,[]);
end