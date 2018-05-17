#!/bin/bash

NDK=/mnt/e/Android/android-ndk-r16b

export ANDROID_TOOLCHAIN_DIR=$PWD/android-toolchain
#mkdir -p $ANDROID_TOOLCHAIN_DIR

$NDK/build/tools/make-standalone-toolchain.sh --verbose \
    --toolchain=arm-linux-android-clang3.6 \
    --stl=libc++ \
    --arch=arm \
    --install-dir=$ANDROID_TOOLCHAIN_DIR \
    --platform=android-21

