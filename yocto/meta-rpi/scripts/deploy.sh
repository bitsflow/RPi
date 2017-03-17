umount /dev/sdb1
umount /dev/sdb2

export MACHINE=raspberrypi3
export OETMP=~/RasberryPi3/rpi/build/tmp

./copy_boot.sh sdb
./copy_rootfs.sh sdb qt5
