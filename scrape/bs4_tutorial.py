#!/usr/bin/python3

from bs4 import BeautifulSoup as bs
import requests

with open('simple.html') as html_file:
    soup = bs(html_file, 'lxml')

#print(soup.prettify())

match = soup.title.text
m2 = soup.div
print(match)
print()
print(m2)
print()
m3 = soup.find('div', class_='footer')
print(m3)
print()
art = soup.find('div', class_='article')
print(art.h2.a)
print(art.text)

for i in soup.find_all('div', class_='article'):
    head = i.h2.a.text
    print(head)
    print(i.p.text)
    print("")
