#!/sbin/sh

RADIO=`getprop ro.boot.radio`

rm -rf /system/priv-app/MotoDoze
rm /vendor/lib/egl/libEGL_adreno_8917.so
rm /vendor/lib/egl/libGLESv1_CM_adreno_8917.so
rm /vendor/lib/egl/libGLESv2_adreno_8917.so
rm /vendor/lib64/egl/libEGL_adreno_8917.so
rm /vendor/lib64/egl/libGLESv1_CM_adreno_8917.so
rm /vendor/lib64/egl/libGLESv2_adreno_8917.so
if [ "$radio" != "APAC" ] && [ "$radio" != "EMEA" ]; then
    # Remove NFC-related files for radios other than APAC and EMEA
    rm /vendor/etc/permissions/com.android.nfc_extras.xml
    rm /vendor/etc/permissions/android.hardware.nfc.xml
    rm /vendor/etc/permissions/android.hardware.nfc.hce.xml
    rm /vendor/etc/permissions/android.hardware.nfc.hcef.xml
    rm -r /system/app/NfcNci
fi
if ["$radio" == "Brazil" ] || [ "$radio" == "APAC" ] || [ "$radio" == "EMEA" ]; then
    # Remove e-compass file for APAC, Brazil and EMEA radios
    rm /vendor/etc/permissions/android.hardware.sensor.compass.xml
fi
