#!/usr/bin/python3 

import re
text_to_search = """
abcdefghijklmnopqrstuvwxyz
ABCDEFGHIJKLMNOPQRSTUVWXYZ
1234567890

Ha HaHa

cat
mat
pat
hat
bat 

MetaCharacters (Need to be escaped):
. ^ $ * + ? { } [ ] \ | ( )

coreyms.com

321-555-4321
123.555.1234
123*555*1234
800-555-1234
900.555.1234

Mr. Schafer
Mr Smith
Ms Davis
Mrs Robinson
Mr. T
"""

emails = """
CoreyMSchafer@gmail.com
corey.schafer@university.edu
corey-321-schafer@my-work.net
"""

urls = """
https://www.google.com
http://coreyms.com
https://youtube.com
https://www.nasa.gov
"""

sentence = 'Start a sentence and then bring it to an end'

#print(r'\tTab')

pattern = re.compile(r'M(r|s|rs)\.?\s[A-Z]\w*')
pattern2 = re.compile(r'\w+@\S+\.\w+')
pattern3 = re.compile(r'https?://(www\.)?(\w+)(\.\w+)')
# pat = re.compile(r'start', re.IGNORECASE)

matches = pattern.finditer(text_to_search)
matches2 = pattern2.finditer(emails)
matches3 = pattern3.finditer(urls)

url_list = []

for match in matches3:
    print(match)
    print("The whole= {}".format(match.group(0)))
    print("The 1st group= {}".format(match.group(1)))
    print("The 2nd group= {}".format(match.group(2)))
    print("The 3rd group= {}".format(match.group(3)))
    url_list.append(match.group(0))
#print(type(matches))

substituted = pattern3.sub(r'\2\3', urls)
print(substituted)
