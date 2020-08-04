#!/usr/bin/python3
from bs4 import BeautifulSoup as bs
import re
import urllib.request as req

url = "https://stackoverflow.com/questions/62279239/multiply-and-append-python"
response = req.urlopen(url)
soup = bs(response, 'lxml')
pattern = re.findall('answerid=\"\d+\"', str(soup))
for i in pattern:
    a_id = str(i)[10:-1]
    result = soup.select("#answer-{} > div > div.answercell.post-layout--right > div.post-text".format(a_id))[0].text
    print(result)

