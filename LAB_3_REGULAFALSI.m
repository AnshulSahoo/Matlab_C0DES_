%Anshul Kumar Sahoo%
%Roll-1802287%
%REGULA-FALSI METHOD MATLAB CODE%
f=@(x) exp(x)-3*x^2;
a=3;
b=4;
for i=1:100
    c=a-((b-a)/(f(b)-f(a)))*f(a);
    if f(c)>0
        b=c;
    else
        a=c;
    end
end
fprintf('Root of given equation is %f',c)
a=3; b=4; p=c;
for i=1:100
    c=a-((b-a)/(f(b)-f(a)))*f(a);
    er(i)=f(p)-f(c);
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