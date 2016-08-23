#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs

DATA=/home/qqxiao/data/carImageData/img
TOOLS=/home/qqxiao/caffe/build/tools
NAME=whole100
TXTPATH=/home/qqxiao/train_e2e/accuracy_test
TOPATH=/home/qqxiao/data/trainData/test

rm -r $TOPATH/imagenet_*
echo "Creating leveldb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/\
    $TXTPATH/test.txt \
    $TOPATH/imagenet_test_leveldb 1


echo "Done."
