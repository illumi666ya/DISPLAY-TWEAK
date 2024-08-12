# ILLUMI
# DEMONICA
# www.bento.me/illumi

# SERVICE.SH
# MODDIR
MODDIR=${0%/*}

# DETECT BOOT IF COMPLETE OR NOT FROM KTWEAK (TYTYDRACO) , THANKS
while [[ "$(getprop sys.boot_completed)" -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# WAIT FOR BOOT TO FINISH COMPLETELY
dbg "Sleeping until boot completes."
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# WAIT TO THE BOOT BE COMPLETED
sleep_needed_time() {
until [[ $(getprop sys.boot_completed) -eq 1 || $(getprop dev.bootcomplete) -eq 1 ]]; do
sleep 1
done
}

sleep_needed_time

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# DISPLAY TWEAK
resetprop -n ro.vendor.display.foss 1
resetprop -n debug.egl.recordable.rgba8888 1
resetprop -n vendor.display.foss.config 1
resetprop -n vendor.display.foss.config_path /vendor/etc/FOSSConfig.xml
resetprop -n vendor.display.adaptive_saturation_parameter 1.1574,-0.0426,-0.0426,-0.143,1.057,-0.143,-0.0144,-0.0144,1.1856
resetprop -n vendor.display.adaptive_white_coefficient 0.0031,0.5535,-87.498,0.0031,0.5535,-87.498,0.0031,0.5535,-87.498
resetprop -n vendor.display.disable_rotator_downscale 1
resetprop -n vendor.display.disable_inline_rotator 1
resetprop -n persist.sys.sf.color_saturation 1.1
resetprop -n persist.sys.sf.native_mode 2
