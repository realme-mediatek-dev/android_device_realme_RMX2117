
# Camera
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.camera.privapp.list=org.lineageos.aperture,com.android.camera,com.google.camera \
    vendor.camera.aux.packagelist=org.lineageos.aperture,com.android.camera,com.google.camera \
    vendor.camera.aux.packageblacklist=org.telegram.messenger,com.microsoft.teams,com.discord

# MediaTek Perf Enhancements
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# Privapp permissions whitelisting
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.camera.sound.forced=0 \
    ro.audio.silent=0 \
    ro.config.vc_call_vol_steps=9

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    bluetooth.device.class_of_device?=90,2,12 \
    bluetooth.hardware.power.operating_voltage_mv=3300 \
    bluetooth.profile.asha.central.enabled?=true \
    bluetooth.profile.avrcp.target.enabled?=true \
    bluetooth.profile.a2dp.source.enabled?=true \
    bluetooth.profile.bas.client.enabled?=true \
    bluetooth.profile.gatt.enabled?=true \
    bluetooth.profile.hfp.ag.enabled?=true \
    bluetooth.profile.hid.device.enabled?=true \
    bluetooth.profile.hid.host.enabled?=true \
    bluetooth.profile.map.server.enabled?=true \
    bluetooth.profile.opp.enabled?=true \
    bluetooth.profile.pan.nap.enabled?=true \
    bluetooth.profile.pan.panu.enabled?=true \
    bluetooth.profile.pbap.server.enabled?=true \
    bluetooth.profile.sap.server.enabled?=true

PRODUCT_SYSTEM_PROPERTIES += \
    persist.bluetooth.system_audio_hal.enabled=true \
    persist.bluetooth.bluetooth_audio_hal.disabled=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    ro.bluetooth.a2dp_offload.supported=false

# VoNR (Voice Over New radio)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.radio.is_vonr_enabled_0=true \
    persist.radio.is_vonr_enabled_1=true
