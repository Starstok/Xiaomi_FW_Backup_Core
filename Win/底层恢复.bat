@echo off
mode con cols=95 lines=30&color 3E
title  By：Starstok【一键恢复FW】
echo ======= 电脑端一键恢复Firmware =======
echo ======= 确保电脑安装usb驱动，手机打开usb调试，并连接电脑 =======
adb kill-server
pause

ping -n 2 127.1 >null
:lp
set "ph=AdbRunLog.txt"
adb start-server
adb devices > "%ph%"
findstr "\<device\>" <"%ph%" && goto :ZuaLOG
echo ======= 没有连接到设备 =======
echo ======= 等待3秒自动连接 ======
echo *****3*****
ping -n 2 127.1 > null
echo *****2*****
ping -n 2 127.1 > null
echo *****1*****
ping -n 2 127.1> null
goto :lp  
:ZuaLOG

echo ======= 已找到设备 ======
ping -n 2 127.1 > null

echo "======= 底层恢复 ======="
echo "1. 开始恢复"
echo "2. 退出"
set /p choice=请输入命令:
 
echo ======= 开始恢复文件 ======

if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/abl of=/dev/block/bootdevice/by-name/abl"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/ablbak of=/dev/block/bootdevice/by-name/ablbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/apdp of=/dev/block/bootdevice/by-name/apdp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/bk1 of=/dev/block/bootdevice/by-name/bk1"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/bk2 of=/dev/block/bootdevice/by-name/bk2"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/bluetooth of=/dev/block/bootdevice/by-name/bluetooth"
REM if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/boot of=/dev/block/bootdevice/by-name/boot"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cache of=/dev/block/bootdevice/by-name/cache"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cmnlib of=/dev/block/bootdevice/by-name/cmnlib"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cmnlibbak of=/dev/block/bootdevice/by-name/cmnlibbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cmnlib64 of=/dev/block/bootdevice/by-name/cmnlib64"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cmnlib64bak of=/dev/block/bootdevice/by-name/cmnlib64bak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/cust of=/dev/block/bootdevice/by-name/cust"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/ddr of=/dev/block/bootdevice/by-name/ddr"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/devcfg of=/dev/block/bootdevice/by-name/devcfg"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/devcfgbak of=/dev/block/bootdevice/by-name/devcfgbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/devinfo of=/dev/block/bootdevice/by-name/devinfo"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/dip of=/dev/block/bootdevice/by-name/dip"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/dpo of=/dev/block/bootdevice/by-name/dpo"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/dsp of=/dev/block/bootdevice/by-name/dsp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/frp of=/dev/block/bootdevice/by-name/frp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/fsc of=/dev/block/bootdevice/by-name/fsc"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/fsg of=/dev/block/bootdevice/by-name/fsg"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/hyp of=/dev/block/bootdevice/by-name/hyp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/hypbak of=/dev/block/bootdevice/by-name/hypbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/keymaster of=/dev/block/bootdevice/by-name/keymaster"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/keymasterbak of=/dev/block/bootdevice/by-name/keymasterbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/keystore of=/dev/block/bootdevice/by-name/keystore"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/limits of=/dev/block/bootdevice/by-name/limits"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/logdump of=/dev/block/bootdevice/by-name/logdump"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/logfs of=/dev/block/bootdevice/by-name/logfs"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/mdtp of=/dev/block/bootdevice/by-name/mdtp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/mdtpsecapp of=/dev/block/bootdevice/by-name/mdtpsecapp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/mdtpsecappbak of=/dev/block/bootdevice/by-name/mdtpsecappbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/misc of=/dev/block/bootdevice/by-name/misc"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/modem of=/dev/block/bootdevice/by-name/modem"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/modemst1 of=/dev/block/bootdevice/by-name/modemst1"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/modemst2 of=/dev/block/bootdevice/by-name/modemst2"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/msadp of=/dev/block/bootdevice/by-name/msadp"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/persist of=/dev/block/bootdevice/by-name/persist"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/persistbak of=/dev/block/bootdevice/by-name/persistbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/pmic of=/dev/block/bootdevice/by-name/pmic"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/pmicbak of=/dev/block/bootdevice/by-name/pmicbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/rawdump of=/dev/block/bootdevice/by-name/rawdump"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/recovery of=/dev/block/bootdevice/by-name/recovery"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/rpm of=/dev/block/bootdevice/by-name/rpm"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/rpmbak of=/dev/block/bootdevice/by-name/rpmbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/sec of=/dev/block/bootdevice/by-name/sec"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/splash of=/dev/block/bootdevice/by-name/splash"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/ssd of=/dev/block/bootdevice/by-name/ssd"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/sti of=/dev/block/bootdevice/by-name/sti"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/storsec of=/dev/block/bootdevice/by-name/storsec"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/storsecbak of=/dev/block/bootdevice/by-name/storsecbak"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/switch of=/dev/block/bootdevice/by-name/switch"
REM if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/system of=/dev/block/bootdevice/by-name/system"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/toolsfv of=/dev/block/bootdevice/by-name/toolsfv"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/tz of=/dev/block/bootdevice/by-name/tz"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/tzbak of=/dev/block/bootdevice/by-name/tzbak"
REM if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/userdata of=/dev/block/bootdevice/by-name/userdata"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/vbmeta of=/dev/block/bootdevice/by-name/vbmeta"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/vbmetabak of=/dev/block/bootdevice/by-name/vbmetabak"
REM if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/vendor of=/dev/block/bootdevice/by-name/vendor"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/xbl of=/dev/block/bootdevice/by-name/xbl"
if '%choice%'=='1' adb shell su -c "dd if=/sdcard/fw/xblbak of=/dev/block/bootdevice/by-name/xblbak"

if '%choice%'=='1' adb shell rm /sdcard/fw/abl
if '%choice%'=='1' adb shell rm /sdcard/fw/ablbak
if '%choice%'=='1' adb shell rm /sdcard/fw/apdp
if '%choice%'=='1' adb shell rm /sdcard/fw/bk1
if '%choice%'=='1' adb shell rm /sdcard/fw/bk2
if '%choice%'=='1' adb shell rm /sdcard/fw/bluetooth
REM if '%choice%'=='1' adb shell rm /sdcard/fw/boot
if '%choice%'=='1' adb shell rm /sdcard/fw/cache
if '%choice%'=='1' adb shell rm /sdcard/fw/cmnlib
if '%choice%'=='1' adb shell rm /sdcard/fw/cmnlibbak
if '%choice%'=='1' adb shell rm /sdcard/fw/cmnlib64
if '%choice%'=='1' adb shell rm /sdcard/fw/cmnlib64bak
if '%choice%'=='1' adb shell rm /sdcard/fw/cust
if '%choice%'=='1' adb shell rm /sdcard/fw/ddr
if '%choice%'=='1' adb shell rm /sdcard/fw/devcfg
if '%choice%'=='1' adb shell rm /sdcard/fw/devcfgbak
if '%choice%'=='1' adb shell rm /sdcard/fw/devinfo
if '%choice%'=='1' adb shell rm /sdcard/fw/dip
if '%choice%'=='1' adb shell rm /sdcard/fw/dpo
if '%choice%'=='1' adb shell rm /sdcard/fw/dsp
if '%choice%'=='1' adb shell rm /sdcard/fw/frp
if '%choice%'=='1' adb shell rm /sdcard/fw/fsc
if '%choice%'=='1' adb shell rm /sdcard/fw/fsg
if '%choice%'=='1' adb shell rm /sdcard/fw/hyp
if '%choice%'=='1' adb shell rm /sdcard/fw/hypbak
if '%choice%'=='1' adb shell rm /sdcard/fw/keymaster
if '%choice%'=='1' adb shell rm /sdcard/fw/keymasterbak
if '%choice%'=='1' adb shell rm /sdcard/fw/keystore
if '%choice%'=='1' adb shell rm /sdcard/fw/limits
if '%choice%'=='1' adb shell rm /sdcard/fw/logdump
if '%choice%'=='1' adb shell rm /sdcard/fw/logfs
if '%choice%'=='1' adb shell rm /sdcard/fw/mdtp
if '%choice%'=='1' adb shell rm /sdcard/fw/mdtpsecapp
if '%choice%'=='1' adb shell rm /sdcard/fw/mdtpsecappbak
if '%choice%'=='1' adb shell rm /sdcard/fw/misc
if '%choice%'=='1' adb shell rm /sdcard/fw/modem
if '%choice%'=='1' adb shell rm /sdcard/fw/modemst1
if '%choice%'=='1' adb shell rm /sdcard/fw/modemst2
if '%choice%'=='1' adb shell rm /sdcard/fw/msadp
if '%choice%'=='1' adb shell rm /sdcard/fw/persist
if '%choice%'=='1' adb shell rm /sdcard/fw/persistbak
if '%choice%'=='1' adb shell rm /sdcard/fw/pmic
if '%choice%'=='1' adb shell rm /sdcard/fw/pmicbak
if '%choice%'=='1' adb shell rm /sdcard/fw/rawdump
if '%choice%'=='1' adb shell rm /sdcard/fw/recovery
if '%choice%'=='1' adb shell rm /sdcard/fw/rpm
if '%choice%'=='1' adb shell rm /sdcard/fw/rpmbak
if '%choice%'=='1' adb shell rm /sdcard/fw/sec
if '%choice%'=='1' adb shell rm /sdcard/fw/splash
if '%choice%'=='1' adb shell rm /sdcard/fw/ssd
if '%choice%'=='1' adb shell rm /sdcard/fw/sti
if '%choice%'=='1' adb shell rm /sdcard/fw/storsec
if '%choice%'=='1' adb shell rm /sdcard/fw/storsecbak
if '%choice%'=='1' adb shell rm /sdcard/fw/switch
REM if '%choice%'=='1' adb shell rm /sdcard/fw/system
if '%choice%'=='1' adb shell rm /sdcard/fw/toolsfv
if '%choice%'=='1' adb shell rm /sdcard/fw/tz
if '%choice%'=='1' adb shell rm /sdcard/fw/tzbak
REM if '%choice%'=='1' adb shell rm /sdcard/fw/userdata
if '%choice%'=='1' adb shell rm /sdcard/fw/vbmeta
if '%choice%'=='1' adb shell rm /sdcard/fw/vbmetabak
REM if '%choice%'=='1' adb shell rm /sdcard/fw/vendor
if '%choice%'=='1' adb shell rm /sdcard/fw/xbl
if '%choice%'=='1' adb shell rm /sdcard/fw/xblbak
if '%choice%'=='2' goto exit
adb reboot

pause