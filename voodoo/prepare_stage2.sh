#!/bin/sh

cd output/target

find \
	etc/mke2fs.conf \
	lib/ \
	usr/sbin/mkfs.* \
	usr/sbin/fsck.* \
	usr/sbin/mke2fs \
	usr/sbin/e2fsck \
	usr/sbin/blkid \
	usr/lib/libext2fs.* \
	usr/lib/libblkid.* \
	usr/lib/libuuid.* \
	usr/lib/libss.so* \
	usr/lib/libe2p.* \
	usr/lib/libcom_err.* \
	| cpio -v -H newc -o | xz -e -9  > ../../voodoo/stage2.cpio.xz

cd ../../voodoo

ls -lh stage2*
