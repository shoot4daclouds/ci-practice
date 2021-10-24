#!/bin/bash

yum -y install gcc kernel-devel kernel-headers dkms make bzip2 perl
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt 
/mnt/VBoxLinuxAdditions.run
umount /mnt 
rm -f /home/vagrant/VBoxGuestAdditions.iso
