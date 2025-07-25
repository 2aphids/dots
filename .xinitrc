#!/bin/bash
xrdb ~/.xresources

feh --bg-scale ~/pictures/wallpaper.png

xrandr --output "HDMI-0" --mode 1920x1080 --rate 100
xrandr --output "DP-0"   --mode 1920x1080 --rate 144 --primary

# start-replay &
picom        &
dwmblocks    &
dwm
