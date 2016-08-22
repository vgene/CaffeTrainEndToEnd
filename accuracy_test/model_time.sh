#!/usr/bin/env sh

TOOLS=/home/qqxiao/Desktop/caffe/build/tools
MODEL=/home/zyxu/train_e2e/data/deploy.prototxt
WEIGHTS=/home/zyxu/train_e2e/model/model_iter_30955.caffemodel

$TOOLS/caffe time -model=$MODEL -weights=$WEIGHTS -gpu=0
