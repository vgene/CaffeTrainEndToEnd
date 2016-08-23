#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

NAME=whole100
TOOLS=/home/qqxiao/caffe/build/tools
TOPATH=/home/qqxiao/data/trainData



$TOOLS/compute_image_mean $TOPATH/imagenet_train_leveldb \
  $TOPATH/imagenet_mean.binaryproto

echo "Done."
