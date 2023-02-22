a=input('입력:')
b=[]
b=a.split(' ')
c=0
if b[2]=='+':
    c=int(b[0])+int(b[1])
elif b[2]=='-':
    c = int(b[0]) - int(b[1])
elif b[2]=='*':
    c = int(b[0]) * int(b[1])
elif b[2]=='/':
    c = int(b[0]) / int(b[1])
print('출력: ',c)











