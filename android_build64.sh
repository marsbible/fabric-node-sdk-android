#!/bin/bash
set -e

ARCH=${ARCH:-arm64}
NODE=${NODE:-8.6.0}

TOOLCHAIN_DIR=~/android-toolchain64
echo $TOOLCHAIN_DIR

export SYSROOT=$TOOLCHAIN_DIR/sysroot

TARGET_CROSS=aarch64-linux-android-
echo "Cross-compiling for" $TARGET_CROSS

export PATH=$TOOLCHAIN_DIR/bin:$PATH
#export CPPPATH=$TARGET_DIR/usr/include
#export LIBPATH=$TARGET_DIR/usr/lib

#TODO: anything better than this hack?
#OPTS="-I $SYSROOT/usr/include -L $TOOLCHAIN_DIR/lib -L $SYSROOT/usr/lib"

export CC="${TARGET_CROSS}clang $OPTS"
export CXX="${TARGET_CROSS}clang++ $OPTS"
export AR=${TARGET_CROSS}ar
export RANLIB=${TARGET_CROSS}ranlib
export LINK="${TARGET_CROSS}clang++ $OPTS"
export CPP="${TARGET_CROSS}clang $OPTS -E"
export STRIP=${TARGET_CROSS}strip
export OBJCOPY=${TARGET_CROSS}objcopy
export LD="${TARGET_CROSS}clang++ $OPTS"
export OBJDUMP=${TARGET_CROSS}objdump
export NM=${TARGET_CROSS}nm
export AS=${TARGET_CROSS}as

export npm_config_arch=$ARCH
export npm_config_platform=android
export npm_config_node_engine=v8
export npm_config_nodedir=~/libnode/
#export npm_config_node_gyp=
export GYP_DEFINES="OS=android host_os=linux libgcc=/home/marble/android-toolchain/lib/gcc/aarch64-linux-android/4.9.x/libgcc.a"

#node-gyp rebuild --target=$NODE -v
#node-pre-gyp --target_platform=android --target_libc=unknown --target_arch=arm64  --target=$NODE --build-from-source install --library=static_library

#PKG=$(npm ls --depth=0 | head -n1 | cut -f1 -d' ' | tr @ -)
#tar czvf $PKG-$ARCH.tgz $(find build -type f -executable)
