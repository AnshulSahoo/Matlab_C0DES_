%Anshul Kumar Sahoo%
%Roll-1802287%
%BISECTION METHOD MATLAB CODE%
f=@(x) x^3+4*x^2-10
a=1;
b=2;
for i=1:10
    c=(a+b)/2;
    if f(c)>0
        b=c;
    else
        a=c;
    end
    fprintf('x%f = %f\n',i,c)
end
fprintf('\n\nRoot of given equation is %f',c)
a=1; b=2; p=c;
for i=1:100
    c=(a+b)/2;
    er(i)=f(c)-f(p);
    if f(c)>0
        b=c;
    else
        a=c;
    end
end
plot(er);
title('plot of error')
xlabel('number of iterations')
ylabel('error')