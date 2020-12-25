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
        if ii - 1 <= 2
            warning("這不是凸多邊形");
            return
        end
        break
    end
    if abs(b) > 10
        if ii - 1 <= 2
            warning("這不是凸多邊形");
            return
        end
        break
    end
    plot(a,b,'-o');hold on
    x(ii) = a;
    y(ii) = b;
    ii = ii + 1;
end

num = ii - 1;
x(ii) = x(1);
y(ii) = y(1);
plot(x,y,'-');
hold on
z = 0;

for aa = 1 : num - 1
    m = (y(aa+1)-y(aa))/(x(aa+1)-x(aa));
    for bb = 1 : num
        for cc = 1 : num
            p = (m*(x(bb)-x(aa))-(y(bb)-y(aa)))*(m*(x(cc)-x(aa))-(y(cc)-y(aa)));
            if p < -2*10^-15
                z = 1;
                break
            end
        end
        if z == 1
            break
        end
    end
    if z == 1
        break
    end
end

if z == 1
    warning("這不是凸多邊形");
end



if z == 0
    for jj = 1 : num - 2 %%整個面積
    
        A = [x(1),y(1)];
        B = [x(jj+1),y(jj+1)];
        C = [x(jj+2),y(jj+2)];
        A_0 = A - B;
        B_0 = A - C;
        Area = abs((A_0(1)*B_0(2) - A_0(2)*B_0(1))/2) + Area;
    end

    for kk = 1 : num
        if kk < num
            A = [x(kk),y(kk)];
            B = [x(kk+1),y(kk+1)];
            area = abs((A(1)*B(2) - A(2)*B(1))/2) + area;
        end
        if kk == num
            A = [x(kk),y(kk)];
            B = [x(1),y(1)];
            area = abs((A(1)*B(2) - A(2)*B(1))/2) + area;
        end
    end
 
    if area - Area <=10^-15
        disp("原點在多邊形中")
    else
        disp("原點不在多邊形中")
    end
end