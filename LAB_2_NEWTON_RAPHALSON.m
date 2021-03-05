%Anshul Kumar Sahoo%
%Roll-1802287%
%NEWTON RAPHALSON METHOD MATLAB CODE%
f=@(x) cos(x)-3*x+1;
df=@(x) -sin(x)-3
a=0;
b=1;
x=a;
for i=1:1:100;
    x1=x-(f(x)/df(x));
    x=x1;
end
solve=x;
fprintf('Approximate root is %f',solve);
a=0;
b=1;
x=a;
error(5)=0;
for i=1:1:5
    x1=x-(f(x)/df(x));
    x = x1;
    error(i)=x1-solve;
end
plot(error);
title('Error vs no. of iteration')
xlabel('number of iterations')
ylabel('error')



