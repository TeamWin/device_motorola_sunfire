# Release name
PRODUCT_RELEASE_NAME := sunfire

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/sunfire/sunfire.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sunfire
PRODUCT_NAME := cm_sunfire
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := sunfire
PRODUCT_MANUFACTURER := Motorola
