#!/bin/bash
export PATH=$(find ~/.local/bin -type d -printf "%p:")$PATH

xrdb ~/.xresources
xset r rate 200 30

randwall ~/pic/wallpapers/

xrandr --output "DP-0"   --mode 1920x1080 --rate 144 --primary
xrandr --output "HDMI-0" --mode 1920x1080 --rate 100 --right-of "DP-0"

start-replay &
picom        &
dwmblocks    &
dwm
