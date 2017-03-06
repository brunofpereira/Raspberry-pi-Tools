#!/bin/bash
#
#
# Created by Bruno Pereira bruno(dot)fpereira(at)gmail(dot)com
#

if [[ "$1" == "" ]]; then
   echo ""
   echo "Usage:"
   echo $0" raspberrypi-image_20140504.gz"
   echo ""
   exit 0
fi


FILE=$1
echo ""
echo "Restoring RaspBerry PI image. Please wait..."
echo ""
gzip -dc $FILE | dd bs=4M | pv | dd of=/dev/mmcblk0
sync
echo ""
echo "Done"

exit 0
