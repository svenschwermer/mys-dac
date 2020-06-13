# Audio DAC around the MYS-6ULX-IOT

## UART
Connection diagram for JP1 with a FTDI TTL-232R cable:
1. TX – yellow
1. RX – orange
1. GND – black

## Host PC setup
NetworkManager:
```
nmcli con add \
    type ethernet
    ifname eno1 \
    con-name ethernet-static \
    ipv4.method manual \
    ipv4.addresses 192.168.100.1/24 \
    ipv6.method ignore
```

`/etc/dnsmasq.conf`
```
port=0
interface=eno1
dhcp-range=192.168.100.10,192.168.100.100,12h
enable-tftp
tftp-root=/srv/tftp
```

`/etc/nfs.conf`
```ini
[nfsd]
udp=y
vers2=y
```

`/etc/exports`
```
/srv/nfs/mys_rfs *(rw,no_root_squash,no_subtree_check)
```

## Unmute output
```sh
amixer sset 'Output Mixer HiFi' on
```
