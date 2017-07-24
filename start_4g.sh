#!/bin/sh

sudo ip link set enxac0414fffd3d up
sudo ip link set enx386077188312 up
sudo dhcpcd enxac0414fffd3d

#sudo route add default gw 192.168.100.1
#sudo route del default gw 192.168.31.1

sudo /etc/init.d/haproxy restart
