#! /usr/bin/python

import sys
import os
import shutil
import random
import numpy as np
import glob

type_file = open('car_30.txt', 'r')
types = type_file.readlines()
f = open('synset.txt', 'a')

for i, type in enumerate(types):
    name = type.split()[0]
    f.write(name+'\n')

f.close()
