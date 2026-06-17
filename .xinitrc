#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

picom -b &
feh --bg-fill ~/Pictures/Wallpapers/wp47.jpg

exec dbus-run-session i3
