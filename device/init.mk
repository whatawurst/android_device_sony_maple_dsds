### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple_dsds \
    init.maple_dsds \
    ueventd.maple_dsds

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/ramdisk/fstab.maple_dsds:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.maple_dsds
