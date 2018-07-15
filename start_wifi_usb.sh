#!/bin/sh

sudo wpa_supplicant -i wlx00956900a8d0 -c /etc/wpa_supplicant/wpa_supplicant.conf &
sudo dhcpcd wlx00956900a8d0



