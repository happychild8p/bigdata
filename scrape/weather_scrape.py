#!/usr/bin/python3
#### Get title, and string within 1st <wf> tag

url = "http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp"
from bs4 import BeautifulSoup as bs
import urllib.request as req
import re

response = req.urlopen(url)
print(response)
print(type(response))
soup = bs(response, "html.parser")
title = soup.find("title")
print(title.text)
wf_tags = soup.find_all("wf")
print(type(wf_tags))
print(wf_tags[0].text)
print("\n =====with regex=====\n")
only_text = re.sub("[^가-힣0-9,~)( \.]", "", wf_tags[0].text)
print(only_text)
