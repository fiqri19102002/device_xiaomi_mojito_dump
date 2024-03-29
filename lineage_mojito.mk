# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mojito device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := mojito
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_mojito
PRODUCT_MODEL := mojito

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := mojito
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="mojito-user 11 RKQ1.210614.002 V14.0.8.0.SKGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/mojito/mojito:12/RKQ1.210614.002/V14.0.8.0.SKGMIXM:user/release-keys
