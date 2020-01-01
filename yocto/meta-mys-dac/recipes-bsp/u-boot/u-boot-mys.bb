require recipes-bsp/u-boot/u-boot-common.inc
require recipes-bsp/u-boot/u-boot.inc
inherit externalsrc

PROVIDES += "u-boot"
RPROVIDES_${PN} += "u-boot"

SRCREV = "${AUTOREV}"
SRC_URI = ""

EXTERNALSRC = "/home/sven/mys-dac/u-boot"

DEPENDS += "bc-native dtc-native"
