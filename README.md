# 讓使用者任意給定任異數點, 判斷原點是否在這凸多邊形內

## 用法
使用者依照順時針或逆時針依序點數點，最後點右鍵來停止。
螢幕上會顯示原點是否在這多邊形內。

*如果只點一個點或是兩個點程式會停止並顯示這不是多邊形。

*如果此圖形不是凸多邊形也會停止並顯示。


## 想法
我是利用三角形的面積來判斷
給定任意三點a,b,c 可得兩向量
A = a-b; B = a-c

如此一來三角形的面積就是
(A(1)*B(2) - A(2)*B(1))/2

由多邊形的第一個點當作原點N邊形分成N-2個三角形來計算面積。

接著再由原點做一樣的事，分成N個三角形算面積最後加在一起。

比較他們的大小，如果兩者的差小於一定的值原點就是在裡面。

驗證方式就是看圖中原點是不是在多邊形裡面。

## 防呆
因為凸多邊形任取一條邊，其餘數點一定在那條邊的同側。

所以我利用求每一條邊的多項式並把各兩點帶進去。

如果在不同側則它們的乘積便為負。

如果得到的值是負數，便顯示不是多邊形並停止。


