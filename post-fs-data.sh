# ILLUMI
# DEMONICA
# www.bento.me/illumi

# POST-FS-DATA.SH
# MODDIR
MODDIR=${0%/*}

# BOOT
while [ -z "$(resetprop sys.boot_completed)" ]; do
  sleep 1
done

# WAIT
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 1
done

# WAIT V2
wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 1
  done
}
wait_until_boot_complete

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# DISPLAY TWEAK 
setprop ro.vendor.display.foss 1
setprop debug.egl.recordable.rgba8888 1
setprop vendor.display.foss.config 1
setprop vendor.display.foss.config_path /vendor/etc/FOSSConfig.xml
setprop vendor.display.adaptive_saturation_parameter 1.1574,-0.0426,-0.0426,-0.143,1.057,-0.143,-0.0144,-0.0144,1.1856
setprop vendor.display.adaptive_white_coefficient 0.0031,0.5535,-87.498,0.0031,0.5535,-87.498,0.0031,0.5535,-87.498
setprop vendor.display.disable_rotator_downscale 1
setprop vendor.display.disable_inline_rotator 1
setprop persist.sys.sf.color_saturation 1.1
setprop persist.sys.sf.native_mode 2
m
