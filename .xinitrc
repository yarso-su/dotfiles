#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

picom -b --config ~/.config/picom/picom.config &

sleep 0.3

xmodmap -e "clear Lock"
xmodmap -e "keycode 66 = Right"

feh --bg-fill ~/Pictures/Wallpapers/wp47.jpg

systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

exec i3
