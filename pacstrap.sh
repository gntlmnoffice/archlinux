#!/bin/bash

rm -rf /etc/pacman.d/mirrorlist
cp -rf files/mirrorlist /etc/pacman.d/

pacstrap -i /mnt base base-devel bash-completion linux linux-headers linux-firmware mkinitcpio lvm2 --noconfirm

genfstab -U /mnt >> /mnt/etc/fstab

cd .. && mv archlinux /mnt

arch-chroot /mnt

echo ">>>>>>>>>>>>>>>>>>>>>>>>>"
echo ">>> arch-chroot /mnt"
