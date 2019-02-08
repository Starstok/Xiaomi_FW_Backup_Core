#!/bin/bash

echo "======= 读写程序 ======="
echo "如果超时5秒钟没有输入, 操作超时"
echo "1. 开始备份"
echo "2. 退出"


# echo "type your input"
# read input      #从标准输入中读取一个参数，并且保存到变量input中
# echo "you type $input"

if read  -t 5 -p "请输入指令进行操作 " input #如果超时两秒钟没有输入，则执行else中的命令
then

    var=1
    if [ $input -eq $var ]; then            #如果input值等于var值
        echo "你已经选择 $input"
        adb shell mkdir /sdcard/fw
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/abl of=/sdcard/fw/abl"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/ablbak of=/sdcard/fw/ablbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/apdp of=/sdcard/fw/apdp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/bk1 of=/sdcard/fw/bk1"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/bk2 of=/sdcard/fw/bk2"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/bluetooth of=/sdcard/fw/bluetooth"
        #adb shell su -c "dd if=/dev/block/bootdevice/by-name/boot of=/sdcard/fw/boot"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cache of=/sdcard/fw/cache"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib of=/sdcard/fw/cmnlib"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlibbak of=/sdcard/fw/cmnlibbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib64 of=/sdcard/fw/cmnlib64"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cmnlib64bak of=/sdcard/fw/cmnlib64bak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/cust of=/sdcard/fw/cust"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/ddr of=/sdcard/fw/ddr"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/devcfg of=/sdcard/fw/devcfg"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/devcfgbak of=/sdcard/fw/devcfgbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/devinfo of=/sdcard/fw/devinfo"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/dip of=/sdcard/fw/dip"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/dpo of=/sdcard/fw/dpo"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/dsp of=/sdcard/fw/dsp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/frp of=/sdcard/fw/frp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/fsc of=/sdcard/fw/fsc"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/fsg of=/sdcard/fw/fsg"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/hyp of=/sdcard/fw/hyp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/hypbak of=/sdcard/fw/hypbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/keymaster of=/sdcard/fw/keymaster"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/keymasterbak of=/sdcard/fw/keymasterbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/keystore of=/sdcard/fw/keystore"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/limits of=/sdcard/fw/limits"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/logdump of=/sdcard/fw/logdump"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/logfs of=/sdcard/fw/logfs"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtp of=/sdcard/fw/mdtp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtpsecapp of=/sdcard/fw/mdtpsecapp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/mdtpsecappbak of=/sdcard/fw/mdtpsecappbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/misc of=/sdcard/fw/misc"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/modem of=/sdcard/fw/modem"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/modemst1 of=/sdcard/fw/modemst1"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/modemst2 of=/sdcard/fw/modemst2"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/msadp of=/sdcard/fw/msadp"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/persist of=/sdcard/fw/persist"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/persistbak of=/sdcard/fw/persistbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/pmic of=/sdcard/fw/pmic"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/pmicbak of=/sdcard/fw/pmicbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/rawdump of=/sdcard/fw/rawdump"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/recovery of=/sdcard/fw/recovery"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/rpm of=/sdcard/fw/rpm"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/rpmbak of=/sdcard/fw/rpmbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/sec of=/sdcard/fw/sec"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/splash of=/sdcard/fw/splash"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/ssd of=/sdcard/fw/ssd"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/sti of=/sdcard/fw/sti"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/storsec of=/sdcard/fw/storsec"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/storsecbak of=/sdcard/fw/storsecbak"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/switch of=/sdcard/fw/switch"
        #adb shell su -c "dd if=/dev/block/bootdevice/by-name/system of=/sdcard/fw/system"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/toolsfv of=/sdcard/fw/toolsfv"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/tz of=/sdcard/fw/tz"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/tzbak of=/sdcard/fw/tzbak"
        #adb shell su -c "dd if=/dev/block/bootdevice/by-name/userdata of=/sdcard/fw/userdata"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/vbmeta of=/sdcard/fw/vbmeta"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/vbmetabak of=/sdcard/fw/vbmetabak"
        #adb shell su -c "dd if=/dev/block/bootdevice/by-name/vendor of=/sdcard/fw/vendor"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/xbl of=/sdcard/fw/xbl"
        adb shell su -c "dd if=/dev/block/bootdevice/by-name/xblbak of=/sdcard/fw/xblbak"
                
    elif [ $input -gt $var ]; then      #如果input值大于var值
        echo "你已经选择 $input"
        exit 1
    fi

else
    echo  "timeout"
fi