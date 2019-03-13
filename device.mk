# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Camera
PRODUCT_PACKAGES += \
    Snap

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

PRODUCT_PACKAGES += \
    android.hidl.base@1.0

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/oppo/RMX1801/RMX1801-vendor.mk)
