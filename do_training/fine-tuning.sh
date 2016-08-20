#!/usr/bin/env sh

/home/qqxiao/Desktop/caffe/build/tools/caffe train \
    --solver=/home/zyxu/train_e2e/data/solver.prototxt \
	--weights=$2 \
	--gpu=$1
