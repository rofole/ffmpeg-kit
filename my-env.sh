#!/bin/bash
# export MY_NDK_VERSION=26.1.10909125
export MY_NDK_VERSION=25.1.8937393
export PATH=/home/dog/Android/Sdk/ndk/$MY_NDK_VERSION/toolchains/llvm/prebuilt/linux-x86_64/bin/:$PATH
export ANDROID_SDK_ROOT=/home/dog/Android/Sdk
export ANDROID_NDK_ROOT=/home/dog/Android/Sdk/ndk/$MY_NDK_VERSION

echo "ANDROID_SDK_ROOT:" $ANDROID_SDK_ROOT
echo "ANDROID_NDK_ROOT:"$ANDROID_NDK_ROOT