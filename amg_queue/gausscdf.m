function gausscdf = gausscdf(x,mu,sig)
%Gaussian Cummulative Distribution

l=length(x);
for i=1:l
    z(i)=(x(i)-mu)/sig;
end
%gausscdf=1;
 gausscdf=normcdf(z,0,1);