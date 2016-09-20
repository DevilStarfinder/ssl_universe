#!/bin/bash
echo $1 | sudo -S pacman -Syu
echo $1 | sudo -S pacman -S nginx --noconfirm
echo $1 | sudo -S rm /etc/nginx/nginx.conf
echo $1 | sudo -S wget https://raw.githubusercontent.com/DevilStarfinder/ssl_universe/master/nginx.conf -O /etc/nginx/nginx.conf
echo $1 | sudo -S systemctl enable nginx
echo $1 | sudo -S systemctl start nginx
