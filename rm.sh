
echo
sleep 1
echo " HNX SETTINGS Berhasil terhapus.. "
rmv() {
settings delete global preferred_network_mode
pm enable --user 0 com.google.android.gms/com.google.android.gms.auth.managed.admin.DeviceAdminReceiver
pm enable --user 0 com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver
}
rmv > /dev/null 2>&1
sleep 0.3
echo