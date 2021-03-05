//Anshul Kumar Sahoo- 1802287
//Curve fitting least square regression
clear
clc
x=[1;2;3;4;5;6;7]
y=[2.5;7;38;55;61;122;110]
X1=sum(x)
Y1=sum(y)
XY=sum(x.*y)
X2=sum(x.^2)
A=[X2 X1;X1 7]
B=[XY;Y1]
p=inv(A)*B
disp(p(1),"The slope of best fit line is")
disp(p(2),"And the constant is")
plot(x,y,'or')

plot(x,p(1)*x+p(2),'-.k')
xtitle('Least square fitting method','x values', 'y values')
legend(['Data';'Fitted Line'])
