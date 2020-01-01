COMPATIBLE_MACHINE_mys-dac = "mys-dac"

KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG_mys-dac = "imx_v6_v7_defconfig"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://oled.cfg \
            file://wm8731.cfg \
            file://wm8804.cfg \
            file://0001-staging-fbtft-Add-SSD1322-driver.patch \
            file://0002-asoc-wm8731-Always-enable-oscillator-for-DAC.patch \
            file://0003-ARM-dts-imx6ull-Add-MYiR-MYS-6ULX-IoT.patch \
            "
