syms A var x

Gaussian(A,var,x) = (1/sqrt(2*pi*var).*exp(-(x-A).^2/(2*var)));


logGaussian = log(Gaussian);

y = diff(logGaussian,A);


A = 1;   fs =100; x=-8:1/fs:10-1/fs; var=2;

m = double(y(A,var,x));

mean(m)
plot(x,m)

%Sürekli kuyruklu ve 'genel olarak simetrik' olmasını istiyoruz