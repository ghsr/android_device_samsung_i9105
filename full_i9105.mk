# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9105/i9105.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9105
PRODUCT_NAME := full_i9105
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9105
