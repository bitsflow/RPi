# Check the argument 
if [ $# -eq 0 ]
then
    echo "ERROR : No arguments supplied"
    exit
fi

# Firstly protect you hard disk.
if [ "$1" = "sba" ]
then
    echo "ERROR : $1 could be hard disk."
    exit
else
    umount $1
fi

# Set Environment Variables
MACHINE=raspberrypi3
export OETMP=~/RasberryPi3/build/tmp

# Copy to card
pushd yocto/meta-rpi/scripts/
    source mk2parts.sh $1
    source copy_boot.sh $1
    source copy_rootfs.sh $1 qt5
popd
    
