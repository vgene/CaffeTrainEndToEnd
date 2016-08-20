#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs

DATA=/home/zyxu/carImageData/img
TOOLS=/home/qqxiao/Desktop/caffe/build/tools
NAME=whole100
TXTPATH=/home/zyxu/train_e2e/accuracy_test
TOPATH=/home/zyxu/train_e2e/accuracy_test


rm -r $TOPATH/imagenet_*
echo "Creating leveldb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/\
    $TXTPATH/test.txt \
    $TOPATH/imagenet_test_leveldb 1


echo "Done."
