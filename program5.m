axis([-10 10 -10 10]); %%設定座標軸
hold on
plot(0,0,'o');  %%標出原點
x =[];
y =[];
for ii = 1:3  %%讓使用者隨意點三個點並記錄下來
    [a,b,button] = ginput(1);
    plot(a,b,'-o');hold on
    x(ii) = a;
    y(ii) = b;
end
x(4) = x(1);
y(4) = y(1);
plot(x,y,'-');
hold on

A = [x(1),y(1)];  %%讓ABC分別取代使用者點的點
B = [x(2),y(2)];
C = [x(3),y(3)];


A_0 = A - B;  %求AB AC向量
B_0 = A - C;
area = abs((A_0(1)*B_0(2) - A_0(2)*B_0(1))/2);%整個面積

%%ABO
A_1 = -A;
B_1 = -B;
area_1 = abs((A_1(1)*B_1(2) - A_1(2)*B_1(1))/2);

%%ACO
A_2 = -A;
C_1 = -C;
area_2 = abs((A_2(1)*C_1(2) - A_2(2)*C_1(1))/2);

%%BCO
B_2 = -B;
C_2 = -C;
area_3 = abs((B_2(1)*C_2(2) - B_2(2)*C_2(1))/2);

if area_1+area_2+area_3 - area <=10^-15
    disp("原點在三角形中")
else
    disp("原點不在三角形中")
end