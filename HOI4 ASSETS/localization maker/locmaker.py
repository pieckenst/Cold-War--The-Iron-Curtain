import os
import sys
import asyncio
import shutil
from io import BytesIO
from functools import wraps
from textwrap import dedent
from random import choice, shuffle
from collections import defaultdict
ideologies = ["",""]
file = ["",""]
justname = ""
extension = ""
print('Chupachu\'s country loc maker, a tool for quickly setting up country localization\n\n')
country = input('Enter your TAG|countryname|countryADJ: ')
filename = 'out.yml'
print('File: ', filename)

if os.path.isfile(filename):
    f = open("ideologies.txt", "r")
    ideologytxt=f.read()
    idelines = ideologytxt.split('\n')
    f.close()
    csplit = country.split('|')
    cname = csplit[0]
    cfullname = csplit[1]
    cadj = csplit[2]
    txt=""
    for line in idelines:
        
        idesplit = line.split('|')
        idesplit[1] = idesplit[1].replace('[ADJ]',cadj)
        idesplit[1] = idesplit[1].replace('[NAME]',cfullname)
        newstr = idesplit[1]
        print(newstr)
        txt+="\n "+cname+"_"+idesplit[0]+":0 \""+newstr+"\""
        txt+="\n "+cname+"_"+idesplit[0]+"_DEF:0 \""+newstr+"\""
        txt+="\n "+cname+"_"+idesplit[0]+"_ADJ:0 \""+cadj+"\""
    f = open("out.yml", "w+")
    
    f.write(txt)
    
    f.close()
else:
    print('Error: could not find file specified.  Please make sure the file is located in the same folder as the python/bat script.')
    #with open("user_data.json") as json_file:
    #        client.user_data = json.load(json_file)
    #youtube_dl.utils.bug_reports_message = lambda: ''
