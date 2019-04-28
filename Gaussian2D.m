function Gaussian2D
    clear;close;clc;
    x=-5:0.1:5; 
    y=-5:0.1:5;
    
    xsigma2 = 0.2; xmu = 0;
    ysigma2 = 0.2; ymu = 0;    
    for i=1:length(x)
        for j=1:length(y)
            Z(i,j) = Gauss(x(i),xmu,xsigma2,y(j),ymu,ysigma2);
            X(i,j) = x(i);
            Y(i,j) = y(j);
        end
    end
	figure,plot3(X,Y,Z);
    figure,surface(X,Y,Z);
end

function Sonuc = Gauss(x,xmu,xsigma2,y,ymu,ysigma2)
    xsigma = sqrt(xsigma2); ysigma = sqrt(ysigma2);
    xb = (x-xmu)^2/xsigma2;
    yb = (y-ymu)^2/ysigma2;
    Sonuc = 1./ (xsigma*ysigma*2*pi) .* exp( -0.5* (xb + yb) );
end