# Don't ask me to make a pretty output for this script.

mkdir tmp/

If(!(test-path out))
{
    mkdir out/
}

Expand-Archive source.zip -DestinationPath zip/
Copy-Item -Path 'zip/dtbo.img' -Destination 'out/dtbo.img'
python3 mkbootimg/mkbootimg.py --kernel "zip/Image.lz4" --ramdisk "boot-files/ramdisk" --dtb "zip/dtb" --cmdline "console=ttyMSM0,115200n8 androidboot.console=ttyMSM0 printk.devkmsg=on msm_rtb.filter=0x237 ehci-hcd.park=3 service_locator.enable=1 androidboot.memcg=1 cgroup.memory=nokmem usbcore.autosuspend=7 androidboot.usbcontroller=a600000.dwc3 swiotlb=2048 androidboot.boot_devices=soc/1d84000.ufshc buildvariant=user" --header_version 2 -o "out/Kernel.img"
Remove-Item tmp
Remove-Item -r zip/*
