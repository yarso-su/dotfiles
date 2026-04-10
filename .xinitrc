#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

picom -b &
feh --bg-fill ~/Pictures/Wallpapers/wp47.jpg &

eval $(ssh-agent -s)

exec i3

