# beauty_soup.py
import os
import pandas as pd
from bs4 import BeautifulSoup
#from urllib.request import urlopen
from lxml import etree
import requests
import random

import urllib.request
from PIL import Image
import ssl
ssl._create_default_https_context = ssl._create_unverified_context


def get_header():
    user_agent_list = (
        #Chrome
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
        'Mozilla/5.0 (Windows NT 5.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
        'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
        #Firefox
        'Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1)',
        'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)',
        'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (Windows NT 6.2; WOW64; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)',
        'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)',
        'Mozilla/5.0 (Windows NT 6.1; Win64; x64; Trident/7.0; rv:11.0) like Gecko',
        'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
        'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)',
        'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'
    )

    user_agent = random.choice(user_agent_list)
    headers= {'User-Agent': user_agent, "Accept-Language": "en-US, en;q=0.5"}
    return headers

def get_pk_info():
    from requests_html import HTMLSession
    headers = get_header()
    url = "https://www.pokellector.com/Fusion-Strike-Expansion/Metapod-Card-2"
    s = HTMLSession()
    response = s.get(url,headers=headers)
    response.html.render()
    html = response.content
    soup = BeautifulSoup(html, "html.parser")
    pk_name = soup.find("h1", {"class": "icon set"}).text

    #Tarjeta donde esta la info
    pk_card_info = soup.find("div", {"class": "content cardinfo"})
    #La tarjeta que contiene la rariridad, set y numero de la carta
    pk_card_right = pk_card_info.find("div", {"class": "infoblurb"})
    #Contenido que esta dentro del div
    pk_card_right_content = pk_card_right.find_all("div")
    #eliminar todos los strong que estan en pk_card_right_content
    pk_card_right_content = [i for i in pk_card_right_content if i.find("strong") == None ]
    #Propiedades de la carta
    pk_card_raririty = pk_card_right_content[0].text
    pk_set = pk_card_right_content[1].text
    pk_card_number = pk_card_right_content[2].text

    #Asignando la info en un dataframe
    data = {'pk_name': [pk_name], 'pk_card_raririty': [pk_card_raririty], 'pk_set': [pk_set], 'pk_card_number': [pk_card_number]}
    dt = pd.DataFrame(data)

    return dt


# def get_pk_info2(name):
#     #name = "Paldea-Evolved-Expansion"
#     from requests_html import HTMLSession
#     headers = get_header()
#     url = "https://www.pokellector.com/"+name
#     s = HTMLSession()
#     response = s.get(url,headers=headers)
#     response.html.render()
#     html = response.content
#     soup = BeautifulSoup(html, "html.parser")

#     pk_data = pd.DataFrame(columns=['code', 'num', 'name', 'img'])
#     pk_card = soup.find("div", {"class": "cardlisting"})
#     pk_name = pk_card.findAll("a")
#     pk_code = pk_card.findAll("span", {"class": "checkbox"})
#     pk_img  = pk_card.findAll("img")
    
#     l1, l2, l3, l4 = ([] for i in range(4))

#     for e in pk_code:
#         pname = e["data-cardid"]
#         l1.append(pname)   

#     for e in pk_name:
#         pdata1 = e["title"].split("#")[1]
#         pdata2 = e["title"].split(" -")[0]
#         l2.append(pdata1)
#         l3.append(pdata2)

#     for e in pk_img:
#         pname = e["data-src"]
#         l4.append(pname) 

#     pk_data = pk_data.assign(code=l1, num=l2, name=l3, img=l4)
#     dt = pd.DataFrame(pk_data)

#     return dt 

# def img_donwload(dir, n):
#     for i in range(1, n+1):
#         url = "https://assets.pokemon.com/assets/cms2/img/cards/web/"+dir+"/"+dir+"_EN_"+str(i)+".png"
#         img_name = 'images/'+dir+"/"+dir+"_EN_"+str(i)+".png"
#         print(url)
#         urllib.request.urlretrieve(url, img_name)
#         # Opening the image and displaying it (to confirm its presence)
#         #img = Image.open(r"geeksforgeeks.png")
#         #img.show()

# def img_donwload2(ename):
#     df = pd.read_csv('csv/'+ename+'_pokedex.csv')
#     print(df['img'])
#     df.iloc[0, 2]
#     path = "img/"+ename
#     if not os.path.exists(path):
#         os.makedirs(path)

#     for i in range(1, len(df.index)+1):
#         pk_num = df.iloc[i-1, 1]
#         pk_name = df.iloc[i-1, 2]
#         url = df.iloc[i-1, 3]
#         img_name = "img/"+ename+"/"+str(pk_num)+"_"+pk_name+".png"
#         print(url)
#         urllib.request.urlretrieve(url, img_name)
