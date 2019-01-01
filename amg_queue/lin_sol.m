function [indx, lin_sol] = lin_sol(x, f1, f2);

%x
%f1
%f2
%plot (x,f1)

ep=0.0001;
%ep=0.01;
le=length(x);
indx=[];
lin_sol=[];

for i=1:le
    if abs(f1(i)-f2(i))<=ep
        indx=[indx i];
        lin_sol=[lin_sol x(i)];
    end
end



    