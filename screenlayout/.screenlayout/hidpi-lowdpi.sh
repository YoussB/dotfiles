#!/bin/sh

set -e -x

xrandr --dpi 192
xrdb -merge -I$HOME $(dirname $0)/.Xresources-hidpi

hidpix=2560
hidpiy=1440

lowdpix=2560
lowdpiy=1440

scale=2

xrandr \
  --output VIRTUAL1 --off \
  --output DP1 --mode ${lowdpix}x${lowdpiy} \
    --right-of eDP1 --primary \
    --scale ${scale}x${scale} \
    --panning "$(expr $lowdpix \* $scale)x$(expr $lowdpiy \* $scale)+${hidpix}+0" \
  --output DP2 --off \
  --output eDP1 --mode ${hidpix}x${hidpiy} \
  --output HDMI1 --off \
  --output HDMI2 --off
