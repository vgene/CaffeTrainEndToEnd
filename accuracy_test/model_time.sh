#!/usr/bin/env sh

TOOLS=/home/qqxiao/caffe/build/tools
MODEL=/home/qqxiao/train_e2e/data/deploy.prototxt
WEIGHTS=/home/qqxiao/data/trainData/model/model_iter_100000.caffemodel

$TOOLS/caffe time -model=$MODEL -weights=$WEIGHTS -gpu=0
