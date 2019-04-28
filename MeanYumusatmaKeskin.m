function MeanYumusatmaKeskin
    clear;clc;close;
    Orjinal = double(imread('cameraman.tif'));
%     maske1 = ones(3,3)/9;
%     maske2 = (1/16) * [1 2 1;2 4 2;1 2 1];
    maske2 = (1/16) * [1 2 1
                       2 4 2
                       1 2 1];
    Yumusak = conv2(Orjinal,maske2,'same');
    Kenar = Orjinal-Yumusak;
    Keskin = Orjinal + Kenar;
    subplot(2,2,1);imshow(Orjinal,[]);title('Orjinal Goruntu');
    subplot(2,2,2);imshow(Yumusak,[]);title('Yumusatilmis Goruntu');
    subplot(2,2,3);imshow(Kenar,[]);title('Kenar Goruntu');
    subplot(2,2,4);imshow(Keskin,[]);title('Keskin Goruntu');
end