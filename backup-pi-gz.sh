#!/bin/bash
#
#
# Created by Bruno Pereira bruno(dot)fpereira(at)gmail(dot)com
#


if [[ "$1" != "" ]]; then
	FILE="raspberrypi-image_"$1"_"`date +%Y%m%d`".gz"
else
	FILE="raspberrypi-image_"`date +%Y%m%d`".gz"
fi

echo ""
echo "Making RaspBerry PI image. Please wait..."
echo ""
dd bs=4M if=/dev/mmcblk0 | pv | gzip > $FILE 
sync
echo ""
echo "Done"

exit 0
