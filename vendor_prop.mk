#
# vendor props for sdm450
#

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist="com.motorola.coresettingsext,com.motorola.camera2,com.motorola.motocit,org.lineageos.snap"
    persist.camera.camera2=true

# Color Mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.hwc_set_default_colormode=true \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=196610 \
    ro.qualcomm.cabl=0

# Factory reset partition
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Play store
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.am=android-motorola \
    ro.com.google.clientidbase.gmm=android-motorola \
    ro.com.google.clientidbase.ms=android-motorola \
    ro.com.google.clientidbase.yt=android-motorola

# Radio + unsorted
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.radio.imei.sv=12 \
    persist.radio.fi_supported=1 \
    persist.vendor.radio.sw_mbn_update=0 \
    persist.vendor.radio.start_ota_daemon=1 \
    ro.telephony.default_network=10,0 \
    persist.vendor.qti.telephony.vt_cam_interface=2 \
    media.settings.xml=/vendor/etc/media_profiles.xml \
    persist.vendor.camera.expose.aux=1 \
    ro.vendor.build.vendorprefix=/vendor \
    persist.vendor.audio.dualmic.config=endfire \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    vendor.mm.enable.qcom_parser=135715 \
    persist.audio.endcall.delay=250 \
    persist.vendor.audio.default.acc=228868 \
    persist.vendor.audio.pdm.gain=9 \
    ro.qualcomm.bt.hci_transport=smd \
    persist.mot.gps.smart_battery=1 \
    ro.hardware.nfc_nci=pn54x \
    vendor.mm.en.sec.smoothstreaming=false \
    vendor.audio_hal.period_size=240 \
    media.recorder.show_manufacturer_and_model=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.use.sw.alac.decoder=false \
    vendor.audio.use.sw.ape.decoder=false \
    vendor.audio.snd_card.open.retries=50 \
    persist.vendor.ssr.restart_level=ALL_ENABLE \
    persist.vendor.qc.sub.rdump.on=1 \
    persist.vendor.qc.sub.rdump.max=0 \
    ro.usb.mtp=2e82 \
    ro.usb.mtp_adb=2e76 \
    ro.usb.ptp=2e83 \
    ro.usb.ptp_adb=2e84 \
    ro.usb.bpt=2ee5 \
    ro.usb.bpt_adb=2ee6 \
    ro.usb.bpteth=2ee7 \
    ro.usb.bpteth+adb=2ee8 \
    vendor.mediacodec.binder.size=6 \
    vendor.vidc.disable.split.mode=1 \
    persist.vendor.cne.rat.wlan.chip.oem=WCN \
    vendor.hw.fm.init=0 \
    persist.vendor.qcomsysd.enabled=1 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.backup.ntpService=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500 \
    ro.opengles.version=196610 \
    persist.vendor.sensor.hw.binder.size=8 \
    rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    vendor.rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    camera.disable_szl_mode=1 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.force_get_pref=1 \
    persist.vendor.radio.is_wps_enabled=true \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.dpm.feature=0 \
    persist.radio.apm_sim_not_pwdn=1 \
    pers\ist.radio.msgtunnel.start=true \
    persist.data.qmi.adb_logmask=0 \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.cs_srv_type=1 \
    ro.vendor.build.version.qcom=LA.UM.7.6.r1-03700-89xx.0 \
    persist.vold.ecryptfs_supported=true \
    ro.build.vendorprefix=/vendor \
    sdm.debug.disable_skip_validate=1 \
    ro.emulate_fbe=false \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    persist.radio.sar_sensor=1 \
    ro.sf.hwc_set_default_colormode=true \
    ro.vendor.sensors.pmd=false \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.amd=false \
    ro.vendor.sensors.rmd=false \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.scrn_ortn=false \
    ro.vendor.sensors.pedometer=false \
    ro.hardware.sensors=ali \
    ro.nfc.ignoreCheckFirmware=true \
    dalvik.vm.dex2oat-threads=6 \
    ro.carrier=unknown \
    ro.dalvik.vm.native.bridge=0 \
    keyguard.no_require_sim=true \
    drm.service.enabled=true \
    persist.vendor.lte.pco_supported=true \
    telephony.lteOnCdmaDevice=1 \
    persist.vendor.radio.snapshot_timer=22 \
    persist.vendor.radio.snapshot_enabled=1 \
    persist.vendor.radio.jbims=1 \
    persist.vendor.vt.supported=1 \
    persist.vendor.sys.cnd.iwlan=1 \
    persist.vendor.cne.logging.qxdm=3974 \
    persist.vendor.ims.disableIMSLogs=0 \
    persist.vendor.ims.disableDebugDataPathLogs=0 \
    persist.vendor.ims.disableADBLogs=0 \
    persist.vendor.ims.vt.enableadb=1

# Time daemon
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# VNDK
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vndk.version=28 \
    ro.vndk.lite=true

# Voice assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
