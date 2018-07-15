#!/bin/sh

sudo wpa_supplicant -i wlp1s0 -c /etc/wpa_supplicant/wpa_supplicant_bwg.conf &
sudo dhcpcd wlp1s0
/home/wagner/start_wifi_usb.sh
/home/wagner/set_dns.sh
/home/wagner/set_dualwifi_route.sh

sudo ipsec restart
/home/wagner/set_iptables_vpn.sh
/home/wagner/set_iproute.sh



