cd Lineage

git clone https://github.com/LineageOS/android_hardware_samsung_slsi_libbt -b lineage-19.0 ./hardware/samsung_slsi/libbt
git clone https://github.com/Galaxya50/android_device_samsung_a505fn -b lineage-19.0 ./device/samsung/a505fn --depth=1
git clone https://github.com/Galaxya50/android_vendor_samsung_a505fn -b android-12.0 ./vendor/samsung/a505fn --depth=1
git clone https://github.com/Galaxya50/android_vendor_samsung_a50-common -b android-12.0 ./vendor/samsung/a50-common --depth=1
git clone https://github.com/Galaxya50/android_device_samsung_a50-common -b lineage-19.0 ./device/samsung/a50-common --depth=1
git clone https://github.com/Galaxya50/android_kernel_samsung_a50-common -b android-12.0 ./kernel/samsung/a50-common --depth=1
git clone https://github.com/Galaxya50/android_kernel_samsung_a50-common -b android-12.0 ./kernel/samsung/a50 --depth=1
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-19.0 ./hardware/samsung
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal -b lineage-19.0 ./hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib -b lineage-19.0 ./hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
git clone https://github.com/LineageOS/android_device_samsung_slsi_sepolicy -b lineage-19.0 ./device/samsung_slsi/sepolicy --depth=1

kernel/samsung/a50/usr/magisk/update_magisk.sh
kernel/samsung/a50-common/usr/magisk/update_magisk.sh

source build/envsetup.sh
breakfast a505fn

echo " - Done, now type "breakfast a505f" and it will compile !"