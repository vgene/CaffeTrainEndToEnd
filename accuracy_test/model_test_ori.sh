#!/usr/bin/env sh

TOOLS=/home/qqxiao/caffe/build/tools
MODEL=/home/qqxiao/train_e2e/accuracy_test/test.prototxt
WEIGHTS=/home/qqxiao/data/trainData/model/model_iter_30955.caffemodel

$TOOLS/caffe test -model=$MODEL -weights=$WEIGHTS -gpu=0
