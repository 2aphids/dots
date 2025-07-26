#!/bin/bash
xrdb ~/.xresources

feh --bg-scale ~/pictures/wallpaper.png

xrandr --output "DP-0"   --mode 1920x1080 --rate 144 --primary
xrandr --output "HDMI-0" --mode 1920x1080 --rate 100 --right-of "DP-0"

# TODO: start-replay &
picom        &
dwm          &
(sleep 3; dwmblocks)
