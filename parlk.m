I=imread('cameraman.tif'); 
imshow(I);
AST=rgb2gray(I);
imshow(AST);
imhist(AST); %Griye �evrilmi� imaj �zerindeki de�erlerin grafiksel da��l�m�n� g�sterir.  
DEL=imadjust(AST); %resim �zerindeki parlakl�klar�n hepsini ayn� seviyeye getirir. 
imshow(DEL); 
A=im2bw(DEL); %vekt�rdeki t�m de�erleri 0 ve 1 lere �evirir
imshow(A);