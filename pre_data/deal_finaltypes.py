#!/usr/bin/python2
import pickle
import codecs
import glob
import shutil
import os
f=codecs.open('finaltypes.txt','r','utf-8')
lines = f.readlines()
f.close()
names = glob.glob('/home/dataset/NewImages/*')
names = [name.split('/')[-1] for name in names]
for line in lines:
    new_line = line.encode('utf-8')
    brand = new_line.split()[0]
    model = new_line.split()[1]
    name = new_line.split()[2]
    dest = '/home/dataset/Images100/'+name
    os.mkdir(dest)
    
    srcs = glob.glob('/home/dataset/NewImages/'+name+'/*.jpg')
    for src in srcs:
        shutil.copy(src, dest)


