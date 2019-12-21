DESCRIPTION = "A tailored image for the MYiR MYS-6ULX DAC."

IMAGE_FEATURES += "\
    ssh-server-dropbear \
    "

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    avahi-daemon \
    alsa-utils \
    mpg123 \
    python3-pycairo \
    python3-modules \
    "

inherit core-image
