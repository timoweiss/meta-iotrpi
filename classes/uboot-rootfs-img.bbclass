#get uboot mkimage so we can convert rootfs
DEPENDS += "u-boot-mkimage-native"

ROOTFS_POSTPROCESS_COMMAND += " build_uboot_rootfsimage ; "

build_uboot_rootfsimage() {

#squashfs
         #We need to prep the image so that u-boot recognizes it
         ${STAGING_BINDIR_NATIVE}/uboot-mkimage -A arm -O linux -T ramdisk -C none -n "U-Boot RamFS" -d ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.${IMAGE_FSTYPES} ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.${IMAGE_FSTYPES}.uboot
}
