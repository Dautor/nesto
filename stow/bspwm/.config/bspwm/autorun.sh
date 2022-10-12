#!/bin/sh

function run_once() {
  if ! pgrep -f $1; then
    $@ >"/tmp/bspwm.autorun.$(echo $@ | tr '/' '__')" &
  fi
}

function set_desktop_wallpaper() {
  if ! command -v nitrogen >/dev/null; then
    return 1
  fi
  nitrogen --restore
  until [ $? -eq 0 ]; do
    nitrogen --restore
  done
}

set_desktop_wallpaper &
setxkbmap -layout 'us,hr' -option 'grp:win_space_toggle'
xset r rate 200 50

run_once nm-applet
run_once flameshot
run_once picom
run_once pasystray
run_once telegram-desktop -startintray
run_once dunst -config ~/.config/dunstrc

~/.config/polybar/launch.sh
