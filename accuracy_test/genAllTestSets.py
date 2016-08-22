from subprocess import call
import sys

f=open('./synset.txt','r')
idSet=f.readlines()

for id in idSet:
    id=id.strip()
    fout=open('./TestSets/'+id+'.txt','w+')
    print id
    call(["node","genTestSet.js",id],stdout=fout)
