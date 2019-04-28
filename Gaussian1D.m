function Gaussian
    clear;close;clc;
    x=-5:0.1:5;
    sigma2 = 0.2; mu = 0;y = Gauss(x,mu,sigma2);plot(x,y,'b-');hold on;
    sigma2 = 1; mu = 0;y = Gauss(x,mu,sigma2);plot(x,y,'r-');hold on;
    sigma2 = 5; mu = 0;y = Gauss(x,mu,sigma2);plot(x,y,'y-');hold on;
    sigma2 = 0.5; mu = -2;y = Gauss(x,mu,sigma2);plot(x,y,'g-');    
end

function y = Gauss(x,mu,sigma2)
    sigma = sqrt(sigma2);    
    y = 1./ (sigma*sqrt(2*pi)) .* exp( -0.5*(x-mu).^2./sigma2);
end