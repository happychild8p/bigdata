#!/usr/bin/python3

import requests

payload = {'username' : "yellow", 'password': 'testing'}
r = requests.post("https://httpbin.org/post", data= payload)

print(r.text)
print()
r_dict = r.json()

print(r_dict['form'])

payload = {'username' : "yellow", 'password': 'testing'}
r = requests.get("https://httpbin.org/basic-auth/yellow/testing", auth=("yellow","testing"), timeout = 3)

print(r.text)

r2 = requests.get("https://httpbin.org/delay/10", timeout=3)
print(r2)

