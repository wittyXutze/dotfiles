#!/bin/bash
export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/run/user/1000
sleep 3
echo "$(date): script ran, HDMI=$(hyprctl monitors all | grep -c HDMI-A-1)" >> /tmp/monitor-setup.log
if hyprctl monitors all | grep -q "HDMI-A-1"; then
    wlr-randr --output eDP-1 --off
    echo "$(date): wlr-randr called" >> /tmp/monitor-setup.log
fi
