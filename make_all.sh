#!/bin/sh


CROSS_PREFIX=aarch64-linux-gnu-
KERNEL_DIR=/home/a/peta_prj/linuxPsBase/petalinux/build/tmp/work/zynqmp_generic_xczu4ev-xilinx-linux/linux-xlnx/6.1.5-xilinx-v2023.1+git999-r0/linux-xlnx-6.1.5-xilinx-v2023.1+git999/
ARCH_USER=arm64

make  CROSS_COMPILE=$CROSS_PREFIX   ARCH=$ARCH_USER  KBUILD_DIR=$KERNEL_DIR   driver
make  CROSS_COMPILE=$CROSS_PREFIX   ARCH=$ARCH_USER     examples
make  CROSS_COMPILE=$CROSS_PREFIX   ARCH=$ARCH_USER library

# has error
# make library_docs
