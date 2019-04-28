I=imread('cameraman.tif'); 
imshow(I);
AST=rgb2gray(I);
imshow(AST);
imhist(AST); %Griye çevrilmiþ imaj üzerindeki deðerlerin grafiksel daðýlýmýný gösterir.  
DEL=imadjust(AST); %resim üzerindeki parlaklýklarýn hepsini ayný seviyeye getirir. 
imshow(DEL); 
A=im2bw(DEL); %vektördeki tüm deðerleri 0 ve 1 lere çevirir
imshow(A);