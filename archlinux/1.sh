#!/bin/sh
set -e

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
rm -r yay-bin

packages_aur="
ookla-speedtest-bin
qdirstat
google-chrome
magic-wormhole
networkmanager-dmenu-git networkmanager-dispatcher-ntpd
ttf-font-awesome ttf-font-awesome-5 ttf-mononoki
xrandr-invert-colors
ttf-unifont
git-extras
"

yay -S $packages_aur
