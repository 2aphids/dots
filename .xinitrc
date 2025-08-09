#!/bin/bash
export PATH=$(find ~/.local/bin -type d -printf "%p:")$PATH
export WEBKIT_DISABLE_DMABUF_RENDERER=0 # surf

xrdb ~/.xresources

randwall ~/pic/wallpapers/

xrandr --output "DP-0"   --mode 1920x1080 --rate 144 --primary
xrandr --output "HDMI-0" --mode 1920x1080 --rate 100 --right-of "DP-0"

# TODO: start-replay &
picom        &
dwmblocks    &
dwm          &
start-replay
