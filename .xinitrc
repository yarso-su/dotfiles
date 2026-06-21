#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

picom -b &
feh --bg-fill ~/Pictures/Wallpapers/wp47.jpg

systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

exec i3
