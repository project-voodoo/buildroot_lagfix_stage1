#!/bin/sh

cd output/target

find \
	usr/lib/libasound* \
	usr/share/alsa/alsa.conf \
	usr/bin/madplay \
	usr/lib/libmad.* \
	usr/lib/libid3.* \
	usr/lib/libz.* \
	| cpio -v -H newc -o | xz -e -9  > ../../voodoo/stages/stage3-sound.cpio.xz

cd ../../voodoo

ls -lh stages*
