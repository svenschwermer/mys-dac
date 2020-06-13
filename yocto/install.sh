#!/usr/bin/env bash

set -eux

kernel_only=false
if [ $# -ge 1 ] && [ "$1" == "-k" ]; then
    kernel_only=true
fi

sudo cp "$BBPATH/tmp/deploy/images/mys-dac/fitImage" /srv/tftp/
$kernel_only && exit

sudo rm -rf /srv/nfs/mys_rfs/*
sudo tar -C /srv/nfs/mys_rfs -xf "$BBPATH/tmp/deploy/images/mys-dac/mys-dac-image-mys-dac.tar.xz"
sudo cp "$HOME/Downloads/Laune der Natur/15 - Kein Grund zur Traurigkeit.mp3" /srv/nfs/mys_rfs/test.mp3
