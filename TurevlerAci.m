function TurevlerAci
    maske=[-1 -1 -1
            0  0  0
            1  1  1];
    I = double(imread('cameraman.tif'));
    Iy = conv2(I,maske,'same');
    Ix = conv2(I,maske','same');
    M = sqrt(Ix.^2+Iy.^2);
    Aci = atan2(Iy,Ix);
    subplot(2,3,1);imshow(I,[]);title('Orjinal Goruntu');
    subplot(2,3,2);imshow(M,[]);title('Kenar Buyuklugu(M)'); 
    subplot(2,3,3);imshow(Aci,[]);title('Aci(theta)');        
    subplot(2,3,4);imshow(Ix,[]);title('Yatay Kenar(Ix)'); 
    subplot(2,3,5);imshow(Iy,[]);title('Dikey Kenar(Iy)');    

end