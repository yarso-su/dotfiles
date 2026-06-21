#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

picom -b --config ~/.config/picom/picom.config &

sleep 0.3

feh --bg-fill ~/Pictures/Wallpapers/wp47.jpg

systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh --replace)
export SSH_AUTH_SOCK

exec i3
