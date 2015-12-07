#! /bin/sh

PACKAGE_LIST="squashfs-tools aufs-tools acpid ssh openvswitch-switch vlan bridge-utils xen-system-amd64 xen-tools qemu-kvm less libvirt-bin virt-manager virt-viewer xorg x11-xserver-utils desktop-base gnome-session gnome-panel lightdm gnome-shell-extensions evince gnome-terminal gnome-backgrounds gnome-themes nautilus mesa-utils alsa-utils pulseaudio vinagre gnome-system-monitor lvm2 mdadm dmraid iceweasel chromium gedit kpartx parted gparted ntfs-3g vim telnet tmux xtightvncviewer mlocate yelp firmware-bnx2 virtualbox-guest-x11"

for PKG in $PACKAGE_LIST
do
   echo "$PKG" >> config/package-lists/xenlivedvd.list.chroot
done
