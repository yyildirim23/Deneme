
syms A var x

Gaussian(A,var,x) = (1/sqrt(2*pi*var).*exp(-(x-A).^2/(2*var)));


logGaussian = log(Gaussian);

y = diff(logGaussian,A);

z = diff(-y,A);


A = 0;   fs =100; x=-5:1/fs:5-1/fs; var=1;

m = double(z(A,var,x));


plot(x(1:end),m)
