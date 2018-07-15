#!/bin/sh
sudo ip rule add from 10.0.0.0/24 table 10
sudo ip route add default via 192.168.154.1 table 10

sudo ip rule show
echo '____________________'
sudo ip route show table 10
