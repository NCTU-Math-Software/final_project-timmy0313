axis([-10 10 -10 10]); %%�]�w�y�жb
hold on
plot(0,0,'o');  %%�ХX���I
x =[];
y =[];
ii = 1;
Area = 0;
area = 0;

while(1) 
    [a,b,button] = ginput(1);
    if abs(a) > 10 
        break
    end
    if abs(b) > 10
        break
    end
    plot(a,b,'-o');hold on
    x(ii) = a;
    y(ii) = b;
    ii = ii + 1;
end
x(ii) = x(1);
y(ii) = y(1);
plot(x,y,'-');
hold on

for jj = 1 : ii - 3 %%��ӭ��n
    
    A = [x(1),y(1)];
    B = [x(jj+1),y(jj+1)];
    C = [x(jj+2),y(jj+2)];
    A_0 = A - B;
    B_0 = A - C;
    Area = abs((A_0(1)*B_0(2) - A_0(2)*B_0(1))/2) + Area;
end

for kk = 1 : ii - 2 
    A = [x(kk),y(kk)];
    B = [x(kk+1),y(kk+1)];
    area = abs((A(1)*B(2) - A(2)*B(1))/2) + area;
end
 
if area - Area <=10^-15
    disp("���I�b�h��Τ�")
else
    disp("���I���b�h��Τ�")
end
