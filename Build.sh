#!/bin/bash 



export ARCH=arm 

export SUBARCH=arm 

export CROSS_COMPILE=/home/abid/arm-eabi-4.8/bin/arm-eabi-

make O=out TARGET_ARCH=arm gh6_mt6580_defconfig

make O=out TARGET_ARCH=arm -j1 | tee build.log
