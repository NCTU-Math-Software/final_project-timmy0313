axis([-10 10 -10 10]); %%設定座標軸
hold on
plot(0,0,'o');  %%標出原點
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

for jj = 1 : ii - 3 %%整個面積
    
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
    disp("原點在多邊形中")
else
    disp("原點不在多邊形中")
end
