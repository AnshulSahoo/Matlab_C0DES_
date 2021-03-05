%Anshul Kumar Sahoo%
%Roll-1802287%
%GAUSS JORDAN ELIMINATION MATLAB CODE%
A= [ 1 1 1; 2 3 7; 1 3 -2] 
B = [3; 0; 17] 
C= [ A B ];  
[ row col ] = size( C);    
  for i = 1:row-1
        if C(i,i) == 0 
            fprintf(' Gauss elimination method can not applicale. Rearrange the equations'); 
           return
        end
     a=C(i,i);  
     C(i,:)= C(i,:)/a;
    for j=i+1:row     
      C(j,:)= C(j,:)- C(j,i)* C(i,:);
    end
  end
 a=C(row,row);  
 C(row,:)= C(row,:)/a;
for i=row:-1:2   
    for j=i-1:-1:1    
      C(j,:)= C(j,:)- C(j,i)* C(i,:);
    end
end 
fprintf('The required solution is:');
  C(:,col)