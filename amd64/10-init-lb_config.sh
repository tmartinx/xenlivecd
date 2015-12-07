#! /bin/sh

# What day is it?
TODAY=`date +%Y%m%d`

# Run `lb config` to prepare all the basic stuff
lb config \
    -a amd64 \
    -b iso \
    --apt apt \
    --apt-secure true \
    --apt-recommends true \
    --debconf-frontend noninteractive \
    --debconf-priority high \
    --cache true \
    --checksums sha256 \
    --bootloader grub \
    --linux-packages "linux-image" \
    --mirror-bootstrap http://ftp.br.debian.org/debian \
    --distribution jessie \
    --mirror-chroot http://ftp.br.debian.org/debian \
    --mirror-chroot-security http://security.debian.org/ \
    --mirror-binary http://ftp.br.debian.org/debian \
    --archive-areas "main contrib non-free" \
    --iso-application "Xen Live DVD v3.0 - Build $TODAY" \
    --iso-volume "Xen Live DVD v3.0" \
    --iso-preparer "Thiago Martins <tmartins@tcmc.com.br>" \
    --iso-publisher "Xen Live DVD Project; http://wiki.xenproject.org/wiki/Live_DVD; xen-users@lists.xensource.com" \
    --source false

# make the tmp directories
# mkdir tmp ; mkdir -p config/chroot_local-includes/tmp ; chmod 1777 config/chroot_local-includes/tmp

#    --interactive shell \
#    --bootstrap-flavour minimal|standard
#    --cache-indices true \
#    --cache-packages true \
#    --debian-installer true|live \
#    --use-fakeroot enabled \
#    --grub-splash "../stuff/splash.xpm.gz" \
#    --initramfs live-boot \
