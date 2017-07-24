#!/bin/sh

if [ $1 = '4g' ];then
    sudo route del default gw 192.168.100.1
    sudo route del default gw 192.168.31.1
    sudo route add default gw 192.168.100.1
fi
if [ $1 = 'wifi' ];then
    sudo route del default gw 192.168.31.1
    sudo route del default gw 192.168.100.1
    sudo route add default gw 192.168.31.1
fi
