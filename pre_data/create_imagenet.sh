#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs

DATA=/home/qqxiao/data/carImageData/img
TOOLS=/home/qqxiao/caffe/build/tools
NAME=whole100
TXTPATH=/home/qqxiao/train_e2e/pre_data
TOPATH=/home/qqxiao/data/trainData

echo "Remove old leveldb"

rm -r $TOPATH/imagenet_*
echo "Creating leveldb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/\
    $TXTPATH/train.txt \
    $TOPATH/imagenet_train_leveldb 1
echo "Creating val lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/\
    $TXTPATH/val.txt \
    $TOPATH/imagenet_val_leveldb 1

echo "Done."
