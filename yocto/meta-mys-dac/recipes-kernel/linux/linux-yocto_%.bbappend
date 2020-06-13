COMPATIBLE_MACHINE_mys-dac = "mys-dac"

KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG_mys-dac = "imx_v6_v7_defconfig"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://oled.cfg \
            file://wm8731.cfg \
            file://wm8804.cfg \
            file://rtl8188eu.cfg \
            file://0001-staging-fbtft-Add-SSD1322-driver.patch \
            file://0002-ARM-dts-imx6ull-Add-MYiR-MYS-6ULX-IoT.patch \
            file://0003-mys-6ulx-iot-Add-sound-card-with-WM8731.patch \
            "
