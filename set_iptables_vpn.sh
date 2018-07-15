#!/bin/sh
sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables -F -t nat

sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT

sudo iptables -A INPUT -p udp --dport 500 -j ACCEPT
sudo iptables -A INPUT -p udp --dport 4500 -j ACCEPT

#sudo iptables -t nat -I POSTROUTING -s 10.0.0.0/24 -o wlp1s0 -m policy --dir out --pol ipsec -j ACCEPT
#sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o wlp1s0 -j MASQUERADE

sudo iptables -t nat -I POSTROUTING -s 10.0.0.0/24 -o wlx00956900a8d0 -m policy --dir out --pol ipsec -j ACCEPT
sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o wlx00956900a8d0 -j MASQUERADE


sudo iptables -A FORWARD -s 10.0.0.0/24 -j ACCEPT


#########################################################################################################
#sudo iptables -t nat -I PREROUTING -p udp -d 192.168.31.119 --dport 500 -j DNAT --to 192.168.154.182
#sudo iptables -t nat -I PREROUTING -p udp -d 192.168.31.119 --dport 4500 -j DNAT --to 192.168.154.182
#
#sudo iptables -A FORWARD -p udp -d 192.168.154.182 --dport 500 -j ACCEPT
#sudo iptables -A FORWARD -p udp -d 192.168.154.182 --dport 4500 -j ACCEPT
#
#sudo iptables -t nat -I PREROUTING -p tcp -d 192.168.31.119 --dport 500 -j DNAT --to 192.168.154.182
#sudo iptables -t nat -I PREROUTING -p tcp -d 192.168.31.119 --dport 4500 -j DNAT --to 192.168.154.182
#
#sudo iptables -A FORWARD -p tcp -d 192.168.154.182 --dport 500 -j ACCEPT
#sudo iptables -A FORWARD -p tcp -d 192.168.154.182 --dport 4500 -j ACCEPT
#
#sudo iptables -t nat -I POSTROUTING -s 10.0.0.0/24 -o wlx00956900a8d0 -m policy --dir out --pol ipsec -j ACCEPT
#sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o wlx00956900a8d0 -j MASQUERADE
#
#sudo iptables -A FORWARD -s 10.0.0.0/24 -j ACCEPT
