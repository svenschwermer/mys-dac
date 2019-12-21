COMPATIBLE_MACHINE_mys-dac = "mys-dac"

KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG_mys-dac = "imx_v6_v7_defconfig"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += " \
            file://0003-staging-fbtft-Add-SSD1322-driver.patch \
            file://0004-asoc-wm8731-Always-enable-oscillator-for-DAC.patch \
            file://oled.cfg \
            file://wm8731.cfg \
            file://wm8804.cfg \
            "
