#!/bin/sh

sudo wpa_supplicant -i wlp1s0 -c /etc/wpa_supplicant/wpa_supplicant.conf &
sudo dhcpcd wlp1s0



