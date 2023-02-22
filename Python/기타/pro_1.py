#(1)
for i in range(0,5):
    for k in range(0,i+1):
        print('*',end='')
    print('\n')

#(2)
sum=0
for i in range(0,1001):
    if i%3==0:
        sum=sum+i

print(sum)

#(3)
import math
a=math.cos(0)
print('입력 : 0 출력: ',a)
a=math.pi/2
b=math.cos(a)
print("입력: PI/2 출력: ",b)

