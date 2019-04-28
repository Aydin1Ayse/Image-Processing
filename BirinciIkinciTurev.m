function BirinciIkinciTurev
    clear;clc;close;
    Orjinal = double(imread('cameraman.tif'));
     maske =  [1 1 1
               0 0 0
               -1 -1 -1];

    [Gx,Gy] = gradient(Orjinal);
    
    BirinciTurev = sqrt(Gx.^2+Gy.^2);
    
    maske =  [1 1 1
              1 -8 1
              1 1 1];
    IkinciTurev = conv2(Orjinal,maske,'same'); %Laplacian
    subplot(2,2,1);imshow(Orjinal,[]);title('Orjinal Goruntu');
    subplot(2,2,2);imshow(BirinciTurev,[]);title('Birinci Turev Goruntusu'); 
    subplot(2,2,3);imshow(IkinciTurev,[]);title('Ikinci Turev Goruntusu');

    %     subplot(2,2,3);imshow(Keskin,[]);title('Keskin Goruntu');
end