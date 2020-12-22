# 讓使用者任意給定任異數點, 判斷原點是否在這多邊形內

## 用法
使用者依照順時針或逆時針依序點數點，最後在外圍點一下來停止。
螢幕上會顯示原點是否在這多邊形內。


## 想法
我是利用三角形的面積來判斷
給定任意三點a,b,c 可得兩向量
A = a-b;
B = a-c

如此一來三角形的面積就是
(A(1)*B(2) - A(2)*B(1))/2

由多邊形的第一個點當作原點N邊形分成N-2個三角形來計算面積。
接著再由原點做一樣的事，分成N個三角形算面積最後加在一起。
比較他們的大小，如果兩者的差小於一定的數原點就是在裡面。
驗證方式就是看圖中原點是不是在多邊形裡面。

