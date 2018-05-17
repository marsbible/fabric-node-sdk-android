#!/bin/bash

NDK=/mnt/e/Android/android-ndk-r16b

export ANDROID_TOOLCHAIN_DIR=$PWD/android-toolchain-x86
#mkdir -p $ANDROID_TOOLCHAIN_DIR

$NDK/build/tools/make-standalone-toolchain.sh --verbose \
    --toolchain=x86-linux-android-clang3.6 \
    --stl=libc++ \
    --arch=x86 \
    --install-dir=$ANDROID_TOOLCHAIN_DIR \
    --platform=android-21

