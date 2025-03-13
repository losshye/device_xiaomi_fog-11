git clone https://github.com/alternoegraha/device_xiaomi_fog-kernel device/xiaomi/fog-kernel
 
# Clone Kernel Header
git clone https://github.com/alternoegraha/kernel_xiaomi_fog_header kernel/xiaomi/fog
 
 # Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp
 
 # Clone vendor tree
git clone -b lineage-18.1 https://github.com/Notkerd69/vendor_xiaomi_fog-db vendor/xiaomi/fog
 
 # Clone LineageOS' hardware/xiaomi
git clone -b lineage-18.1 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi
 
 # fixup hardware/xiaomi
cd hardware/xiaomi
rm -rf megvii
cd ../..
 
 #Sign-Key
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp
