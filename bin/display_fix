#!/bin/bash

# Get the outputs
outputs=$(xrandr | grep -o '[^\s]\+ connected')
if [[ "$outputs" =~ "HDMI-1" ]]; then
	xrandr --output LVDS-1 --off
	xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
else
	xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --scale 1.5x1.5
fi
