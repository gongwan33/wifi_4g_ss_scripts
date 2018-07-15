#!/bin/sh
sudo route del default gw 192.168.31.1
sudo route del default gw BTFLY.lan
sudo route add default gw BTFLY.lan
sudo route add default gw 192.168.31.1

