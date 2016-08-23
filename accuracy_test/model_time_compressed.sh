#!/usr/bin/env sh

TOOLS=/home/qqxiao/caffe/build/tools
MODEL=/home/qqxiao/data/trainData/compress/compressed.prototxt
WEIGHTS=/home/qqxiao/data/trainData/compress/model_iter_100000_svd_fc6_1024_fc7_256.caffemodel

$TOOLS/caffe time -model=$MODEL -weights=$WEIGHTS -gpu=0
