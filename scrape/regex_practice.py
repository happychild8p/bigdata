#!/usr/bin/python3
#Purpose= to show sin number and replace second part with astrisks except for the first letter
#without using regex
import re
str1 = """
kim 950602-1234567
park 940602-2234567
"""
name = []
sin = []
for line in str1.split("\n"):
    sub_list = line.split(" ")
    for substr in sub_list:
        if len(substr) == 14:
            sin.append(substr[0:8]+"*"*6)
        elif len(substr) > 0:
            name.append(substr)

sin_mask = dict(zip(name, sin))
print(sin_mask)
print("\n============= With regex ==========")
#with regex
pattern = re.compile('(\d{6}-\d)\d{6}')
print(pattern.sub("\g<1>******", str1))

