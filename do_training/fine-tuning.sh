#!/usr/bin/env sh

/home/qqxiao/caffe/build/tools/caffe train \
    --solver=/home/qqxiao/data/trainData/solver.prototxt \
	--weights=$2 \
	--gpu=$1
