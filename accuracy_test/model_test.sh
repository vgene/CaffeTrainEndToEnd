#!/usr/bin/env sh

TOOLS=/home/qqxiao/Desktop/caffe/build/tools
MODEL=/home/zyxu/train_e2e/accuracy_test/test.prototxt
WEIGHTS=/home/zyxu/train_e2e/model/model_iter_30955.caffemodel

$TOOLS/caffe test -model=$MODEL -weights=$WEIGHTS -gpu=0
