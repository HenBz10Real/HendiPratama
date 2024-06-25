source $FUNCTION
sc_0="https://whatsapp.com/channel/0029VaPT9RuGE56jWEdnKN28"
sc_1="@Henpeex"
sc_3="filesettings@users"
version="v3.8Beta"
RED="\033[31m"
CYAN="\033[36m"
output_sensix=16600000
path_icon="/sdcard/AxeronModules/hnxsettings/bin/logo.png"
ui_printf() {
   echo "$1"
}
animate_colors() {
text="$1"
colors=("41" "46" "43" "44" "45" "42")
color_count=${#colors[@]}
i=0
while [ $i -lt $color_count ]; do
current_color=${colors[i]}
echo -en "\e[1;${current_color}m$text\e[0m\r"
sleep 1
i=$((i + 1))
done
}
animate_typing() {
text="$1"
  color="$2"
 i=0
   while [ $i -lt ${#text} ]; do
     echo -en "\e[${color}m${text:$i:1}\e[0m"
 sleep 0.02
   i=$((i + 1))
 done
echo
}
print_header() {
echo  "${RED}╭─────────────────────────────────────────────╮"
echo  "│                HNX SETTINGS                 │"
echo  "╰─────────────────────────────────────────────╯"
}
show_menu() {
echo "╭─────────────────────────────────────────────╮"
echo "│ Developer : $sc_1                        │"
echo "│ Version : $version                          │"
echo "│ Information : $sc_3            │"
echo "╰─────────────────────────────────────────────╯"
}
print_output() {
echo  "${RED}╭─────────────────────────────────────────────╮"
echo  "│    BUY? https://linktr.ee/henvxofficial     │"
echo  "╰─────────────────────────────────────────────╯"
}
ui_printf
sleep 0.6
print_header
sleep 1
show_menu
sleep 1 && ui_printf
sleep 1
hnxsetting () {
settings put global preferred_network_mode 9,9
pm disable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
pm disable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
dumpsys deviceidle whitelist -com.google.android.gms
dumpsys deviceidle whitelist +com.dts.freefireth
dumpsys deviceidle whitelist +com.dts.freefirethmax
}
animate_typing " Unpack 01-hnx_19.1.7-4_dalvikcache.bin ..."
sleep 1
SAVEIFS=$IFS
IFS=$"\n\b"
data=$*
if [ -f "$data" ]; then
   ui_printf $TDATE
if [ ! -z "$TDATE" ]; then
touch dummy
touch -t "tdate" dummy
touch -r "dummy" "$picc"
else
ui_printf "Unpacking preload (19.1.7-4) ..."
fi
fi
IFS=$SAVEIFS
animate_typing " Unpacking preload (19.1.7-4) ..."
sleep 0.3
FILE_OR_DIR="/sdcard/Android/data/com.dts.freefireth/files/ImageCache/2.104"
OUTPUT_NAME="hnx_bypass"
animate_typing " Unpack 02-hnx_18.1.10-2 archive.bin ... "
sleep 1
animate_typing " Unpacking dalvik_archive (18.1.10-2) ... "
sleep 1
function dalvik_archive {
internal="/storage/emulated/0/"
find "$internal" -iname "*dalvik" -exec rm -rf {} \;
find "$internal" -iname "*log" -exec rm -rf {} \;
find "$internal" -iname "*dat" -exec rm -rf {} \;
rm -rf "$internal"Android/data/com.dts.freefireth/files/ImageCache/*
rm -rf "$internal"Android/data/com.dts.freefiremax/files/ImageCache/*
dumpsys deviceidle force-idle deep
dumpsys deviceidle sys-whitelist -com.google.android.gms
pm trim-caches 99M
logcat -c
settings put system pointer_speed 100
settings put secure tap_duration_threshold 0.0
settings put secure touch_blocking_period 0.0
}
setprop debug.sf.late.sf.duration $output_sensix
setprop debug.sf.use_phase_offsets_as_durations 0
setprop debug.sf.late.app.duration $output_sensix
setprop debug.sf.frame_rate_multiple_threshold $output_sensix
setprop debug.sf.earlyGl.sf.duration $output_sensix
setprop debug.sf.earlyGl.app.duration $output_sensix
setprop debug.sf.early.app.duration $output_sensix
setprop debug.sf.early.sf.duration $output_sensix
animate_typing " Unpack 03-hnx-settings_31v2_aarch64dalvik.bin ... "
sleep 0.5
animate_typing " Unpacking ndk-dalvik (31v-2) ... "
sleep 0.6
function ndk_dalvik {
settings put global job_scheduler_quota_controller_constants "max_job_count_per_rate_limiting_window=3, rate_limiting_window_ms=10000, max_job_count_active=50, max_session_count_active=30"
cmd appops set com.dts.freefiremax VIBRATE ignore
cmd appops set com.dts.freefireth VIBRATE ignore
}
animate_typing " Unpack 04-hnx_18.1.7-4_obb64.bin ... "
dalvik_archive > /dev/null 2>&1
ndk_dalvik > /dev/null 2>&1
sleep 1
animate_typing " Unpack Injectors system-dalvik (10v-3) ..."
sleep 1
animate_typing " Unpacking system-dalvik (success)"
hnxsetting > /dev/null 2>&1
cmd notification post -S bigtext -t 'HNXPRO+' 'Tag' 'FreeFire Optimazion⚡'> /dev/null 2>&1
ui_printf
ui_printf
sleep 1
print_output
ui_printf
