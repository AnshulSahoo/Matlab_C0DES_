%Anshul Kumar Sahoo%
%Roll-1802287%
%NEWTON FORWARD METHOD MATLAB CODE%
x = [0 1 2 3 4];
y = [1 7 23 55 109];
m =input('enter the value');
n = length(x);
h = x(2)-x(1);
p = (m-x(1))/h;
d(:,1) = y';
for j=2:n
    for i=j:n
        d(i,j)=(d(i-1,j-1)-d(i,j-1))/(x(i-j+1)-x(i));
    end
end
a = diag(d)';
Df(1) = 1;
c(1) = a(1);
for j = 2:n
    Df(j)= (p-x(j-1)) .* Df(j-1)
    c(j) = a(j) .* Df(j)
end
fp=sum(c)