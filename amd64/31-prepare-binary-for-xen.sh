#! /bin/sh

# This script must be run just after lh_build finishes.
# It's needed because I don't know how to tell live-helper to do this
# jobs... Maybe merging some functions from update-grub to live-helper
# can be a good idea to improve this! Then live-helper will be able
# to generate grub's menu.lst for the live CD from binary/ contents... ;-)

# Copy Xen Hypervisor to ISO boot directory
cp chroot/boot/xen-4.4-amd64.gz binary/live
