function Gaussian
x=-1:0.1:5;
sigma2=0.2;mu=0;y=Gauss(x,mu,sigma2);plot(x,y,'r-');
sigma2=1;mu=0;y=Gauss(x,mu,sigma2);plot(x,y,'g-');
sigma2=5;mu=0;y=Gauss(x,mu,sigma2);plot(x,y,'b-');
sigma2=0;mu=0;y=Gauss(x,mu,sigma2);plot(x,y,'r-');

%y=1./(sigma*sqrt(2*pi)).*exp(-0.5*(x-mu).^2./sigma2)
%plot(x,y,'blue')

end
function y=Gauss(x,mu,sigma2)
sigma=sqrt(sigma2);
y=1./(sigma*sqrt(2*pi)).*exp(-0.5*(x-mu).^2./sigma2);
end
