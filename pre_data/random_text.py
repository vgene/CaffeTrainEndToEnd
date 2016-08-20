#! /usr/bin/python

import os
import random
f = open('out.txt', 'r')
fout = open('train.txt','w')
fout_val =open('val.txt','w')

mm = f.readlines()
random.shuffle(mm)
l = len(mm)
mid = int(2.0/3.0*l)
for i in range(mid):
    fout.write(mm[i])
for i in range(mid+1,l):
    fout_val.write(mm[i])

