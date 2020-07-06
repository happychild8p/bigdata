#!/usr/bin/python3

import requests

r = requests.get('https://xkcd.com/353/')
print(r)
print(dir(r))
print(help(r))
print(r.text)  ## This is going to be an html soource

img = requests.get("https://imgs.xkcd.com/comics/python.png")
print(img.content)
#print()
#print(img.text)
#with open('comic.png', 'wb') as f:
#    f.write(img.content)

#### Below codes are with html status
print(img.status_code)
print(img.ok)   ### True when code < 400
print(img.headers)

payload = {'page' : 2, 'count': 25}
r2 = requests.get("https://httpbin.org/get", params= payload)
###r2 = requests.get("https://httpbin.org/get?page=2&count=25') ###obsoleted
print(r2)
print()
print(r2.headers)
print()
print(r2.text)
print()
print(r2.url)

