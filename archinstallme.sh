echo  /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
rm /etc/localtime
ln -s /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc --utc
echo arch > /etc/hostname
pacman -S iw wpa_supplicant dialog wpa_actiond
passwd
ehco "Glover590"
useradd -m -g users -G wheel,storage,power -s /bin/zsh cameron
passwd cameron
EDITOR=nano visudo
(uncomment %wheel ALL=(ALL) ALL)
pacman -S grub
grub-install --target=i386-pc --recheck /dev/sda
pacman -S os-prober
grub-mkconfig -o /boot/grub/grub.cfg
echo "I'm all done, your system is now ready, please reboot"
