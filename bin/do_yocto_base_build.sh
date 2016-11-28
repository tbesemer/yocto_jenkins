#!/bin/bash
#
#  Simple scrpit to pull Yocto/OE Meta Layers, update bblayers.conf
#  and peform build.

CWD=`pwd`

#  Clone Yocto/Poky Base.
#
git clone https://github.com/tbesemer/poky.git
if [ $? -ne 0 ]
then
    echo "Failed to clone Poky"
    exit 1
fi

#  Checkout desire Branchto build against.
#
cd poky; 
git checkout krogoth
if [ $? -ne 0 ]
then
    echo "Failed to Checkout Branch Krogoth"
    exit 1
fi

#  Check out remaining OE layers for a project, switch to correct
#  Branches, and update ~/poky/build/conf/bblayers.conf
#
#   FILL ME IN

#  Initialize environment and do base build.
#
. oe-init-build-env
bitbake core-image-minimal
if [ $? -ne 0 ]
then
    echo "Failed to do Yocto Base Build"
    exit 1
fi

exit 0
