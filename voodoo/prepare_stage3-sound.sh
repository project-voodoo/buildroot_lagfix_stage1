#!/bin/sh

cd output/target

find \
	usr/lib/libasound* \
	usr/alsa/alsa.conf \
	usr/bin/madplay \
	usr/lib/libmad* \
	usr/lib/libid3* \
	| cpio -v -H newc -o | xz -e -9  > ../../voodoo/stage3-sound.cpio.xz

cd ../../voodoo

ls -lh stage*
