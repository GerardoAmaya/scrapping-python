#!/usr/bin/env python
# coding=utf-8

# ------------------------------------------------------------------------------
# Processing Pokemon data
# ------------------------------------------------------------------------------
# IVAN MORAN

import urllib.request
from PIL import Image
import pandas as pd
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

"""
exp_cod		colecction
SV01		198
SWSH11		196
SWSH12		195
SWSH12PT5	159
PGO			78
SWSH1		202
SWSH2		192
SWSH3		189
SWSH4		185
SWSH5		163
SWSH6		198
SWSH7		203
SWSH8		264
SWSH9		172
SWSH45		72
SM4			111
SM5			138
SM35		73
XY11		114
"""



# Retrieving the resource located at the URL
# and storing it in the file name a.png

# Max number

def pk_img_donwload(dir, n):
    for i in range(1, n+1):
        url = "https://assets.pokemon.com/assets/cms2/img/cards/web/"+dir+"/"+dir+"_EN_"+str(i)+".png"
        img_name = 'images/'+dir+"/"+dir+"_EN_"+str(i)+".png"
        print(url)
        urllib.request.urlretrieve(url, img_name)
        # Opening the image and displaying it (to confirm its presence)
        #img = Image.open(r"geeksforgeeks.png")
        #img.show()
pk_img_donwload("XY11", 114)


def pk_img_donwload2(ename):
    df = pd.read_csv('csv/'+ename+'_pokedex.csv')
    print(df['img'])
    df.iloc[0, 2]
    
    for i in range(1, len(df.index)+1):
        pk_num = df.iloc[i-1, 1]
        pk_name = df.iloc[i-1, 2]
        url = df.iloc[i-1, 3]
        img_name = "img/"+ename+"/"+str(pk_num)+"_"+pk_name+".png"
        print(url)
        urllib.request.urlretrieve(url, img_name)


