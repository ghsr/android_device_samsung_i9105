# Include common makefile
$(call inherit-product, device/samsung/galaxys2plus-common/common.mk)

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.capri_ss_s2ve.rc:root/init.capri_ss_s2ve.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.capri_ss_s2ve.rc:root/init.recovery.capri_ss_s2ve.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.capri_ss_s2ve.rc:root/ueventd.capri_ss_s2ve.rc \
    $(LOCAL_PATH)/ramdisk/fstab.capri_ss_s2ve:root/fstab.capri_ss_s2ve
