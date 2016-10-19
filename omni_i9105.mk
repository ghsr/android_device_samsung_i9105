# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9105/i9105.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_i9105
PRODUCT_DEVICE := i9105
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9105

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=s2vexx \
    TARGET_DEVICE=s2ve \
    BUILD_FINGERPRINT="samsung/s2vexx/s2ve:4.2.2/JDQ39/I9105XXUBND1:user/release-keys" \
    PRIVATE_BUILD_DESC="s2vexx-user 4.2.2 JDQ39 I9105XXUBND1 release-keys"
