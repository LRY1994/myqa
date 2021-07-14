"""
covert 
Q22686	Donald John Trump (born June 14, 1946) is the 45th and curr ...
to
{ id: Q22686, text: Donald John Trump (born June 14, 1946) is the 45th and curr ... }

""" 
import json
inputfile = './data/wikidata5m_text.txt'
outputfile = './data/text.txt'
# Read dataset
file = open(inputfile, "rb")

with open(outputfile, 'w') as f:
    for line in file.readlines():                 
        tmp = line.decode().split("\t",1)
        f.write(json.dumps({'id': tmp[0], 'text': tmp[1].strip()}))
        f.write('\n')
file.close()