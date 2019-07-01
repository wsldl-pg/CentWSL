#!/bin/bash

ARCH="x86_64"
OS_VER="7"
ROOTFS_VER="1901"
ROOTFS_FN="CentOS-${OS_VER}-${ARCH}-GenericCloud-${ROOTFS_VER}.raw"
ROOTFS_TGZ="${ROOTFS_FN}.tar.gz"
ROOTFS_URL="http://cloud.centos.org/centos/7/images/${ROOTFS_TGZ}"

LNCR_BLD="19070200"
LNCR_ZIP="icons.zip"
LNCR_FN="CentOS.exe"
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


