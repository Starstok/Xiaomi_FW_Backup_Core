@echo off
mode con cols=95 lines=30&color 3E
title  By：Starstok【一键备份FW】
echo ======= 电脑端一键备份Firmware =======
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

echo "======= 底层备份 ======="
echo "1. 开始备份"
echo "2. 退出"
set /p choice=请输入命令:
 
echo ======= 开始备份文件 ======
echo ======= 备份的文件保存/sdcard/fw目录 ======

adb shell mkdir /sdcard/fw
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/abl of=/sdcard/fw/abl"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/ablbak of=/sdcard/fw/ablbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/apdp of=/sdcard/fw/apdp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/bk1 of=/sdcard/fw/bk1"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/bk2 of=/sdcard/fw/bk2"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/bluetooth of=/sdcard/fw/bluetooth"
REM if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/boot of=/sdcard/fw/boot"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cache of=/sdcard/fw/cache"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib of=/sdcard/fw/cmnlib"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlibbak of=/sdcard/fw/cmnlibbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib64 of=/sdcard/fw/cmnlib64"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib64bak of=/sdcard/fw/cmnlib64bak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/cust of=/sdcard/fw/cust"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/ddr of=/sdcard/fw/ddr"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/devcfg of=/sdcard/fw/devcfg"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/devcfgbak of=/sdcard/fw/devcfgbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/devinfo of=/sdcard/fw/devinfo"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/dip of=/sdcard/fw/dip"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/dpo of=/sdcard/fw/dpo"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/dsp of=/sdcard/fw/dsp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/frp of=/sdcard/fw/frp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/fsc of=/sdcard/fw/fsc"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/fsg of=/sdcard/fw/fsg"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/hyp of=/sdcard/fw/hyp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/hypbak of=/sdcard/fw/hypbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/keymaster of=/sdcard/fw/keymaster"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/keymasterbak of=/sdcard/fw/keymasterbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/keystore of=/sdcard/fw/keystore"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/limits of=/sdcard/fw/limits"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/logdump of=/sdcard/fw/logdump"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/logfs of=/sdcard/fw/logfs"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtp of=/sdcard/fw/mdtp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtpsecapp of=/sdcard/fw/mdtpsecapp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtpsecappbak of=/sdcard/fw/mdtpsecappbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/misc of=/sdcard/fw/misc"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/modem of=/sdcard/fw/modem"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/modemst1 of=/sdcard/fw/modemst1"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/modemst2 of=/sdcard/fw/modemst2"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/msadp of=/sdcard/fw/msadp"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/persist of=/sdcard/fw/persist"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/persistbak of=/sdcard/fw/persistbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/pmic of=/sdcard/fw/pmic"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/pmicbak of=/sdcard/fw/pmicbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/rawdump of=/sdcard/fw/rawdump"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/recovery of=/sdcard/fw/recovery"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/rpm of=/sdcard/fw/rpm"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/rpmbak of=/sdcard/fw/rpmbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/sec of=/sdcard/fw/sec"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/splash of=/sdcard/fw/splash"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/ssd of=/sdcard/fw/ssd"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/sti of=/sdcard/fw/sti"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/storsec of=/sdcard/fw/storsec"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/storsecbak of=/sdcard/fw/storsecbak"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/switch of=/sdcard/fw/switch"
REM if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/system of=/sdcard/fw/system"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/toolsfv of=/sdcard/fw/toolsfv"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/tz of=/sdcard/fw/tz"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/tzbak of=/sdcard/fw/tzbak"
REM if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/userdata of=/sdcard/fw/userdata"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/vbmeta of=/sdcard/fw/vbmeta"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/vbmetabak of=/sdcard/fw/vbmetabak"
REM if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/vendor of=/sdcard/fw/vendor"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/xbl of=/sdcard/fw/xbl"
if '%choice%'=='1' adb shell su -c "dd if=/dev/block/bootdevice/by-name/xblbak of=/sdcard/fw/xblbak"
if '%choice%'=='2' goto exit

pause