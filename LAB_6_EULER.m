%Anshul Kumar Sahoo%
%Roll-1802287%
%EULER METHOD MATLAB CODE%
f=@(x,y)y % f(x,y) function dy/dx=f(x,y)%
x0=0;     
y0=1;
xn=5;
fprintf('Value of x0 = %d\n',x0);
fprintf('Value of y0 = %d\n',y0);
fprintf('Value of xn = %d\n',xn);
n=input('Enter number of steps n: ');
fprintf('\n');
h=input('Enter the step size h: ');
fprintf('\nEulers Formula: y1=y0+h*f(x0,y0)\n\n');
%Formula: y1=y0+h*f(x0,y0);
for i=1:n+1
    fprintf('step %d\t',i-1);
    fprintf('%4.3f  %4.4f \n',x0,y0);
    m = f(x0,y0);
    y1=y0+h*m;
    x1=x0+h;
    x0=x1;
    y0=y1;  
end


    
