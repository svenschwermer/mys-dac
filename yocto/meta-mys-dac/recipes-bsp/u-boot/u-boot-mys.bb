require recipes-bsp/u-boot/u-boot-common.inc
require recipes-bsp/u-boot/u-boot.inc
inherit externalsrc

SRCREV = "${AUTOREV}"
SRC_URI = ""

EXTERNALSRC = "/home/sven/mys-dac/u-boot"

DEPENDS += "bc-native dtc-native"
