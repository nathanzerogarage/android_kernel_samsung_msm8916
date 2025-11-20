#!/bin/bash

export KBUILD_BUILD_USER="lain"
export LOCALVERSION="-openthe3xit"
echo $KBUILD_BUILD_USER
echo $KBUILD_BUILD_HOST
echo -e "done?"
sleep 5s

export ARCH=arm
export CROSS_COMPILE=$(pwd)/TC/prebuilts/gcc/linux-x86/arm/arm-eabi-7.2/bin/arm-eabi-

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_sec_j5lte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
