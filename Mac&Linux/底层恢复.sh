#!/bin/bash

echo "======= 读写程序 ======="
echo "如果超时5秒钟没有输入, 操作超时"
echo "1. 开始写入"
echo "2. 退出"

if read -t 5 -p "请输入指令进行操作 " input
then
    
    var=1
    if [ $input -eq $var ];then
        echo "你已经选择" $input
        adb shell su -c "dd if=/sdcard/fw/abl of=/dev/block/bootdevice/by-name/abl"
        adb shell su -c "dd if=/sdcard/fw/ablbak of=/dev/block/bootdevice/by-name/ablbak"
        adb shell su -c "dd if=/sdcard/fw/apdp of=/dev/block/bootdevice/by-name/apdp"
        adb shell su -c "dd if=/sdcard/fw/bk1 of=/dev/block/bootdevice/by-name/bk1"
        adb shell su -c "dd if=/sdcard/fw/bk2 of=/dev/block/bootdevice/by-name/bk2"
        adb shell su -c "dd if=/sdcard/fw/bluetooth of=/dev/block/bootdevice/by-name/bluetooth"
        #adb shell su -c "dd if=/sdcard/fw/boot of=/dev/block/bootdevice/by-name/boot"
        adb shell su -c "dd if=/sdcard/fw/cache of=/dev/block/bootdevice/by-name/cache"
        adb shell su -c "dd if=/sdcard/fw/cmnlib of=/dev/block/bootdevice/by-name/cmnlib"
        adb shell su -c "dd if=/sdcard/fw/cmnlibbak of=/dev/block/bootdevice/by-name/cmnlibbak"
        adb shell su -c "dd if=/sdcard/fw/cmnlib64 of=/dev/block/bootdevice/by-name/cmnlib64"
        adb shell su -c "dd if=/sdcard/fw/cmnlib64bak of=/dev/block/bootdevice/by-name/cmnlib64bak"
        adb shell su -c "dd if=/sdcard/fw/cust of=/dev/block/bootdevice/by-name/cust"
        adb shell su -c "dd if=/sdcard/fw/ddr of=/dev/block/bootdevice/by-name/ddr"
        adb shell su -c "dd if=/sdcard/fw/devcfg of=/dev/block/bootdevice/by-name/devcfg"
        adb shell su -c "dd if=/sdcard/fw/devcfgbak of=/dev/block/bootdevice/by-name/devcfgbak"
        adb shell su -c "dd if=/sdcard/fw/devinfo of=/dev/block/bootdevice/by-name/devinfo"
        adb shell su -c "dd if=/sdcard/fw/dip of=/dev/block/bootdevice/by-name/dip"
        adb shell su -c "dd if=/sdcard/fw/dpo of=/dev/block/bootdevice/by-name/dpo"
        adb shell su -c "dd if=/sdcard/fw/dsp of=/dev/block/bootdevice/by-name/dsp"
        adb shell su -c "dd if=/sdcard/fw/frp of=/dev/block/bootdevice/by-name/frp"
        adb shell su -c "dd if=/sdcard/fw/fsc of=/dev/block/bootdevice/by-name/fsc"
        adb shell su -c "dd if=/sdcard/fw/fsg of=/dev/block/bootdevice/by-name/fsg"
        adb shell su -c "dd if=/sdcard/fw/hyp of=/dev/block/bootdevice/by-name/hyp"
        adb shell su -c "dd if=/sdcard/fw/hypbak of=/dev/block/bootdevice/by-name/hypbak"
        adb shell su -c "dd if=/sdcard/fw/keymaster of=/dev/block/bootdevice/by-name/keymaster"
        adb shell su -c "dd if=/sdcard/fw/keymasterbak of=/dev/block/bootdevice/by-name/keymasterbak"
        adb shell su -c "dd if=/sdcard/fw/keystore of=/dev/block/bootdevice/by-name/keystore"
        adb shell su -c "dd if=/sdcard/fw/limits of=/dev/block/bootdevice/by-name/limits"
        adb shell su -c "dd if=/sdcard/fw/logdump of=/dev/block/bootdevice/by-name/logdump"
        adb shell su -c "dd if=/sdcard/fw/logfs of=/dev/block/bootdevice/by-name/logfs"
        adb shell su -c "dd if=/sdcard/fw/mdtp of=/dev/block/bootdevice/by-name/mdtp"
        adb shell su -c "dd if=/sdcard/fw/mdtpsecapp of=/dev/block/bootdevice/by-name/mdtpsecapp"
        adb shell su -c "dd if=/sdcard/fw/mdtpsecappbak of=/dev/block/bootdevice/by-name/mdtpsecappbak"
        adb shell su -c "dd if=/sdcard/fw/misc of=/dev/block/bootdevice/by-name/misc"
        adb shell su -c "dd if=/sdcard/fw/modem of=/dev/block/bootdevice/by-name/modem"
        adb shell su -c "dd if=/sdcard/fw/modemst1 of=/dev/block/bootdevice/by-name/modemst1"
        adb shell su -c "dd if=/sdcard/fw/modemst2 of=/dev/block/bootdevice/by-name/modemst2"
        adb shell su -c "dd if=/sdcard/fw/msadp of=/dev/block/bootdevice/by-name/msadp"
        adb shell su -c "dd if=/sdcard/fw/persist of=/dev/block/bootdevice/by-name/persist"
        adb shell su -c "dd if=/sdcard/fw/persistbak of=/dev/block/bootdevice/by-name/persistbak"
        adb shell su -c "dd if=/sdcard/fw/pmic of=/dev/block/bootdevice/by-name/pmic"
        adb shell su -c "dd if=/sdcard/fw/pmicbak of=/dev/block/bootdevice/by-name/pmicbak"
        adb shell su -c "dd if=/sdcard/fw/rawdump of=/dev/block/bootdevice/by-name/rawdump"
        adb shell su -c "dd if=/sdcard/fw/recovery of=/dev/block/bootdevice/by-name/recovery"
        adb shell su -c "dd if=/sdcard/fw/rpm of=/dev/block/bootdevice/by-name/rpm"
        adb shell su -c "dd if=/sdcard/fw/rpmbak of=/dev/block/bootdevice/by-name/rpmbak"
        adb shell su -c "dd if=/sdcard/fw/sec of=/dev/block/bootdevice/by-name/sec"
        adb shell su -c "dd if=/sdcard/fw/splash of=/dev/block/bootdevice/by-name/splash"
        adb shell su -c "dd if=/sdcard/fw/ssd of=/dev/block/bootdevice/by-name/ssd"
        adb shell su -c "dd if=/sdcard/fw/sti of=/dev/block/bootdevice/by-name/sti"
        adb shell su -c "dd if=/sdcard/fw/storsec of=/dev/block/bootdevice/by-name/storsec"
        adb shell su -c "dd if=/sdcard/fw/storsecbak of=/dev/block/bootdevice/by-name/storsecbak"
        adb shell su -c "dd if=/sdcard/fw/switch of=/dev/block/bootdevice/by-name/switch"
        #adb shell su -c "dd if=/sdcard/fw/system of=/dev/block/bootdevice/by-name/system"
        adb shell su -c "dd if=/sdcard/fw/toolsfv of=/dev/block/bootdevice/by-name/toolsfv"
        adb shell su -c "dd if=/sdcard/fw/tz of=/dev/block/bootdevice/by-name/tz"
        adb shell su -c "dd if=/sdcard/fw/tzbak of=/dev/block/bootdevice/by-name/tzbak"
        #adb shell su -c "dd if=/sdcard/fw/userdata of=/dev/block/bootdevice/by-name/userdata"
        adb shell su -c "dd if=/sdcard/fw/vbmeta of=/dev/block/bootdevice/by-name/vbmeta"
        adb shell su -c "dd if=/sdcard/fw/vbmetabak of=/dev/block/bootdevice/by-name/vbmetabak"
        #adb shell su -c "dd if=/sdcard/fw/vendor of=/dev/block/bootdevice/by-name/vendor"
        adb shell su -c "dd if=/sdcard/fw/xbl of=/dev/block/bootdevice/by-name/xbl"
        adb shell su -c "dd if=/sdcard/fw/xblbak of=/dev/block/bootdevice/by-name/xblbak"

        # adb shell rm /sdcard/fw/abl
        # adb shell rm /sdcard/fw/ablbak
        # adb shell rm /sdcard/fw/apdp
        # adb shell rm /sdcard/fw/bk1
        # adb shell rm /sdcard/fw/bk2
        # adb shell rm /sdcard/fw/bluetooth
        # #adb shell rm /sdcard/fw/boot
        # adb shell rm /sdcard/fw/cache
        # adb shell rm /sdcard/fw/cmnlib
        # adb shell rm /sdcard/fw/cmnlibbak
        # adb shell rm /sdcard/fw/cmnlib64
        # adb shell rm /sdcard/fw/cmnlib64bak
        # adb shell rm /sdcard/fw/cust
        # adb shell rm /sdcard/fw/ddr
        # adb shell rm /sdcard/fw/devcfg
        # adb shell rm /sdcard/fw/devcfgbak
        # adb shell rm /sdcard/fw/devinfo
        # adb shell rm /sdcard/fw/dip
        # adb shell rm /sdcard/fw/dpo
        # adb shell rm /sdcard/fw/dsp
        # adb shell rm /sdcard/fw/frp
        # adb shell rm /sdcard/fw/fsc
        # adb shell rm /sdcard/fw/fsg
        # adb shell rm /sdcard/fw/hyp
        # adb shell rm /sdcard/fw/hypbak
        # adb shell rm /sdcard/fw/keymaster
        # adb shell rm /sdcard/fw/keymasterbak
        # adb shell rm /sdcard/fw/keystore
        # adb shell rm /sdcard/fw/limits
        # adb shell rm /sdcard/fw/logdump
        # adb shell rm /sdcard/fw/logfs
        # adb shell rm /sdcard/fw/mdtp
        # adb shell rm /sdcard/fw/mdtpsecapp
        # adb shell rm /sdcard/fw/mdtpsecappbak
        # adb shell rm /sdcard/fw/misc
        # adb shell rm /sdcard/fw/modem
        # adb shell rm /sdcard/fw/modemst1
        # adb shell rm /sdcard/fw/modemst2
        # adb shell rm /sdcard/fw/msadp
        # adb shell rm /sdcard/fw/persist
        # adb shell rm /sdcard/fw/persistbak
        # adb shell rm /sdcard/fw/pmic
        # adb shell rm /sdcard/fw/pmicbak
        # adb shell rm /sdcard/fw/rawdump
        # adb shell rm /sdcard/fw/recovery
        # adb shell rm /sdcard/fw/rpm
        # adb shell rm /sdcard/fw/rpmbak
        # adb shell rm /sdcard/fw/sec
        # adb shell rm /sdcard/fw/splash
        # adb shell rm /sdcard/fw/ssd
        # adb shell rm /sdcard/fw/sti
        # adb shell rm /sdcard/fw/storsec
        # adb shell rm /sdcard/fw/storsecbak
        # adb shell rm /sdcard/fw/switch
        # #adb shell rm /sdcard/fw/system
        # adb shell rm /sdcard/fw/toolsfv
        # adb shell rm /sdcard/fw/tz
        # adb shell rm /sdcard/fw/tzbak
        # #adb shell rm /sdcard/fw/userdata
        # adb shell rm /sdcard/fw/vbmeta
        # adb shell rm /sdcard/fw/vbmetabak
        # #adb shell rm /sdcard/fw/vendor
        # adb shell rm /sdcard/fw/xbl
        # adb shell rm /sdcard/fw/xblbak
        adb reboot recovery
    elif [ $input -gt $var ];then
        echo "你已经选择" $input
        exit 1
    fi

else
echo "timeout"
fi
