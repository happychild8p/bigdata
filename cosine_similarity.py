#!/usr/bin/python3

import pandas as pd
import math
def cos_sim(list1, list2):
    if len(list1) == len(list2):
        numerator = 0.0 ; denom_li1 = 0.0 ; denom_li2 = 0.0
        for i in range(1, len(list1)):
            numerator = numerator + (list1[i]*list2[i])
            denom_li1 = denom_li1 + list1[i]**2
            denom_li2 = denom_li2 + list2[i]**2
        return numerator / math.sqrt(denom_li1 * denom_li2)

If __name__ == “__main__”:
    df = pd.read_csv("movie.csv")
    result = {}
    r_key = ""
    for i in range(df.shape[0]):
         for j in range(i+1,df.shape[0]):
                r_key =  df.iloc[i][0] +"-"+ df.iloc[j][0]
                result[r_key] = cos_sim(list(df.iloc[i]), list(df.iloc[j]))
    for key in result.keys():
        print("{}: {}".format(key, round(result[key],4)))
