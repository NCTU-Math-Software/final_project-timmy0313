axis([-10 10 -10 10]); %%�]�w�y�жb
hold on
plot(0,0,'o');  %%�ХX���I
x =[];
y =[];
for ii = 1:3  %%���ϥΪ��H�N�I�T���I�ðO���U��
    [a,b,button] = ginput(1);
    plot(a,b,'-o');hold on
    x(ii) = a;
    y(ii) = b;
end
x(4) = x(1);
y(4) = y(1);
plot(x,y,'-');
hold on

A = [x(1),y(1)];  %%��ABC���O���N�ϥΪ��I���I
B = [x(2),y(2)];
C = [x(3),y(3)];


A_0 = A - B;  %�DAB AC�V�q
B_0 = A - C;
area = abs((A_0(1)*B_0(2) - A_0(2)*B_0(1))/2);%��ӭ��n

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
    disp("���I�b�T���Τ�")
else
    disp("���I���b�T���Τ�")
end