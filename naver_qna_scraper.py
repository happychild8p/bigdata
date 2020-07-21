#!/usr/bin/python3

import re
from bs4 import BeautifulSoup
import urllib.request as req

def crawl_question(keyword, page):
    link_list = []
    q_list = []
    for i in range(1, page+1):
        # i is current page
        s_link = "https://kin.naver.com/search/list.nhn?query={}&page={}".format(keyword, i)
        open_link = req.urlopen(s_link)
        soup = BeautifulSoup(open_link, 'html')
        for i in range(1, 11):
            # i is current question number
            elem = "#s_content > div.section > ul > li:nth-child({}) > dl > dt > a".format(i)
            tags = soup.select(elem)
            for tag in tags:
                link_list.append(tag.attrs['href'])
                q_list.append(tag.text)
    #return q_list, link_list
    q_and_link = dict(zip(q_list, link_list))
    return q_and_link
        
def crawl_answer(q_and_link):
    q_list = list(q_and_link.keys())
    link_list = list(q_and_link.values())
    a_list = []
    total = {}
    q_num = 0
    for each in link_list:
        open_link = req.urlopen(each)
        soup = BeautifulSoup(open_link, 'html')

        n_ans = soup.select("#answerArea > div > div.c-classify.c-classify--sorting > div.c-classify__title-part > h3 > em")
        n_ans = int(n_ans[0].string)

        for i in range(n_ans):
            elem = "#answer_{} > div._endContents.c-heading-answer__content ".format(i+1)
            answers = soup.select(elem)
            for answer in answers:
                a_list.append(answer.text.strip("\n"))
            #total_a_list.append(a_list)
            #a_list = []
        total[q_list[q_num]] = a_list
        q_num = q_num + 1
        a_list = []
    #return total_a_list[0]
    return total

if __name__ == "__main__":
#####crawl_answer(crawl_question("corona", 3))
    keyword = str(input("Type a keyword to search for: "))
    page_n = int(input("How many pages you need to lookup?: "))
    try:
        q_and_link = crawl_question(keyword, page_n)
        undone = crawl_answer(q_and_link)
        print(undone)
    except:
        print("Please check your key word and page number")
# q_list, link_list = crawl_question("corona", 1)
# print(q_list)
# print(link_list)
# print(crawl_answer(link_list))
#question = list(question_and_link)
#print(question)
#print(len(undone.keys()))
#print(answers)
#print(dic)

