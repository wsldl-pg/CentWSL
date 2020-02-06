#!/bin/bash

ARCH="x86_64"
OS_VER="7"
ROOTFS_VER="1907"
ROOTFS_FN="CentOS-${OS_VER}-${ARCH}-GenericCloud-${ROOTFS_VER}.raw"
ROOTFS_TGZ="${ROOTFS_FN}.tar.gz"
ROOTFS_URL="http://cloud.centos.org/centos/${OS_VER}/images/${ROOTFS_TGZ}"

LNCR_BLD="20013100"
LNCR_ZIP="icons.zip"
LNCR_NAME="CentOS"
LNCR_FN=${LNCR_NAME}.exe
LNCR_ZIPFN=${LNCR_NAME}${OS_VER}.exe
LNCR_URL="https://github.com/yuk7/wsldl/releases/download/${LNCR_BLD}/${LNCR_ZIP}"


if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi


