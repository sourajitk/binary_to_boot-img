# Sultan2boot
Description: Converts a kernel zipfile to a stock boot.img file. This is used for stock firmware since rooting is a pain and making a boot image is the easy way out when flashing kernels.

## Support
This has only been tested on:
- Sultan kernel for Pixel 4/XL
- Iremía Kernel for Pixel 4a 

## Usage
1. Clone this repository
2. Use the command `git submodule update --init` to fetch the files for this script
3. Make sure you have python 3 installed on your system!
4. Copy the kernel zipfile into the project root and rename it to `source.zip`
5. Run `.\make_boot.ps1` and this should extract the dtbo.img and create a Kernel.img file which is the boot image you need to flash. Rename `Kernel.img` to whatever you wish.

#### This is a fork of bdashore3/sultan2boot.