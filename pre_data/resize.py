#! /usr/bin/python

import sys
import os
import shutil
import random
import numpy as np
import glob
import cv2

xtest = glob.glob('/home/qqxiao/Desktop/caffe/data/whole100/train_orig30/*/*.jpg')
for x in xtest:
    x_dir = '/home/qqxiao/Desktop/caffe/data/whole100/train/'+x.split('/')[-2]
    if os.path.exists(x_dir) == False:
        os.mkdir(x_dir)
    img = cv2.imread(x)
    new_img = cv2.resize(img, (256, 256))
    cv2.imwrite(x_dir+'/'+x.split('/')[-1], new_img)
