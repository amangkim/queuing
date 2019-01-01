function fact = fact(n)
% Factorial of n
% Made by Amang
if (n<=0)
	fact = 1;
else
	f=fact(n-1);
end
