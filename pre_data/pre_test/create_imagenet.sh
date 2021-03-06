#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs

DATA=/home/zyxu/carImageData/img
TOOLS=/home/qqxiao/Desktop/caffe/build/tools
NAME=whole100
TXTPATH=/home/zyxu/train_e2e/pre_data/pre_test
TOPATH=/home/zyxu/train_e2e/pre_data/pre_test

echo "Remove old leveldb"

rm -r $TOPATH/imagenet_*
echo "Creating leveldb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/\
    $TXTPATH/train.txt \
    $TOPATH/imagenet_train_leveldb 1

echo "Done."
