n = 10^5;
lambda = 64;
xi = poissrnd(lambda,[1 n]);
freq = cumsum(xi>48 & xi<80);
prob = freq./(1:n);
axis([0 n 0 1])
hold on
plot(1:n,prob)
plot(1:n,3/4.*ones(1,n),'r')
sum = 0;
for i = 49:79
    sum = sum + (64^i/factorial(i))*exp(-64);
end
plot(1:n,sum.*ones(1,n),'g')