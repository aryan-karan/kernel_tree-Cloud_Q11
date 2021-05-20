#!/bin/bash 


git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8 arm-eabi-4.8

export ARCH=arm 

export SUBARCH=arm 

export CROSS_COMPILE=$(pwd)/arm-eabi-4.8/bin/arm-eabi-

make O=out TARGET_ARCH=arm gh6_mt6580_defconfig

make O=out TARGET_ARCH=arm -j1 | tee build.log
