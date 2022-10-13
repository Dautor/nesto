#!/bin/sh
set -e

packages="
git base-devel sudo opendoas
nano vi man-db man-pages pass xplr
pacman-contrib
stow fish the_silver_searcher p7zip unzip unrar rsync openssh screen bc
smartmontools sysstat strace iperf net-tools nmap tcpdump termshark wireshark-qt wget curl
fzf bat exa btop htop atop dstat iotop ncdu nvtop powertop
pipewire pipewire-pulse pavucontrol alsa-firmware alsa-oss alsa-plugins alsa-utils pasystray
xorg xorg-xinit bspwm sxhkd polybar picom arandr brightnessctl dunst scrot tigervnc unclutter xdo xdotool xsecurelock xss-lock
kitty chromium firefox mpv vlc flameshot yt-dlp pcmanfm nitrogen tea mupdf telegram-desktop teamspeak3
networkmanager systemd-resolvconf network-manager-applet networkmanager-vpnc nm-connection-editor
noto-fonts-cjk noto-fonts-emoji noto-fonts-extra adwaita-qt5 adwaita-qt6 terminus-font ttf-dejavu ttf-ubuntu-font-family xorg-fonts-100dpi
"

pacman -S $packages
cp files/doas.conf /etc/doas.conf
cp files/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
cp files/pc /usr/share/X11/xkb/symbols/pc
