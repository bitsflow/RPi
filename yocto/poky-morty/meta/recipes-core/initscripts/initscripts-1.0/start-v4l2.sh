#!/bin/sh
### BEGIN INIT INFO
# Provides:          start-v4l2
# Short-Description: start v4l2 to use a csi from userland.
### END INIT INFO

PATH=/sbin:/bin:/usr/sbin:/usr/bin

echo "Start V4L2..."

modprobe bcm2835-v4l2

mod
