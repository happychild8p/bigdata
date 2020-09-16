#!/usr/bin/python3

from tkinter import *
# 시작
#window = Tk()
#button = Button(window, text="클릭하세요!")
#button.pack()
#window.mainloop()
''' 레이블, 엔트리, 버튼 위젯
window = Tk()

l1 = Label(window, text = '화씨')
l2 = Label(window, text = '섭씨')
l1.pack()
l2.pack()

e1 = Entry(window)
e2 = Entry(window)
e1.pack()
e2.pack()

b1 = Button(window, text="화씨->섭씨")
b2 = Button(window, text="섭씨->화씨")
b1.pack()
b2.pack()

window.mainloop()
'''

''' 레이블, 엔트리, 버튼 옵션 추가하기
root = Tk()

label = Label(root, text="Welcome, Please input your name", bg="beige", font="arial")
label.pack()

entry = Entry(root, text="Input here", bd=5, cursor="pirate")
entry.pack()

button = Button(root, text="확인", fg="red", cursor="arrow", height=10)
button.pack()

root.mainloop() 
'''

window = Tk()
l1 = Label(window, text = 'ID')
l2 = Label(window, text = 'Password')
l1.grid(row=0, column=0)
l2.grid(row=1, column=0)
e1 = Entry(window)
e2 = Entry(window)
e1.grid(row=0, column=1)
e2.grid(row=1, column=1)
b1 = Button(window, text="Enter")
b2 = Button(window, text="Cancel")
b1.grid(row=2, column=0)
b2.grid(row=2, column=1)
window.mainloop()

