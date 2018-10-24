%***   written by muammer faruk g�n�l   ***
% a ��kk�
a1=100;
b=0.5;
for i=1:375
  
    if i==1
       result=a1;
    else
        
        result=a1+(b*result);   
    end
    t(i)=result;
end
%b ��kk�
function y=fonksiyon(a,b,n)  % a=alfa b= beta n=g�n say�s�n� belirtir.
for i=1:3
  
    if i==1
       y=a;
    else
        
        y=a+(b*y);   
    end
end
%c ��kk�
%recursive 
function y=recursive(n) 
a=100;
b=0.5;
if n<2
    y=a;
else
   
    y=a+(b*recursive(n-1));
end
end
%iterative
function y=fonksiyon(a,b,n)
for i=1:3
  
    if i==1
       y=a;
    else
        
        y=a+(b*y);   
        
    end
end
%d ��kk�
% iki fonksiyonu ay� ayr� �al��t�rd���mda computational time recursive =0.023609 hesaplarken
% itarative =0.000003 hesaplanm��t�r.
function y=recursive(n)
a=100;
b=0.5;
if n<2
    y=a;
else
    tic;
    y=a+(b*recursive(n-1));
    toc;
end
end

function y=fonksiyon(a,b,n)
for i=1:3
  
    if i==1
       y=a;
    else
        tic;
        y=a+(b*y);   
        toc;
    end
end
% e ��kk�
a=1/4;
b=3/5;
for i=1:20
    if i==1
       result=a;
        t(i)=result;
    else
        result=a+(b*result);   
        t(i)=result;
    end
     
end


a1=1/2;
b1=3/5;
for j=1:20
    if j==1
       result1=a1;
        t1(j)=result1;
    else
        result1=a1+(b1*result1);   
        t1(j)=result1;
    end
     
end


a2=1/4;
b2=3/4;
for k=1:20
    if k==1
       result2=a2;
        t2(k)=result2;
    else
        result2=a2+(b2*result2);   
        t2(k)=result2;
    end
     
end
hold on
stem (t,'o')
stem(t1,'*')
stem(t2,'x')
