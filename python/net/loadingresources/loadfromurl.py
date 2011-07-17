#!/usr/bin/python3
import urllib.request

filehandle = \
       urllib.request.urlopen("http://elearning-mm.fh-joanneum.at/icals/")
lines=filehandle.readlines()

for l in lines:
 l=str(l)
 print(l)