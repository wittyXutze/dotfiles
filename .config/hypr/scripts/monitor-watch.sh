#!/bin/bash
CFGDIR="$HOME/.config/waybar"
LOCK="/tmp/waybar-restart.lock"

restart_waybar() {
    [ -f "$LOCK" ] && return
    touch "$LOCK"
    sleep 1
    pkill waybar
    sleep 0.5
    if hyprctl monitors | grep -q "HDMI-A-1"; then
        waybar -c "$CFGDIR/config-desktop.jsonc" &
    else
        waybar -c "$CFGDIR/config-laptop.jsonc" &
    fi
    sleep 2
    rm -f "$LOCK"
}

handle() {
    case $1 in
        monitoradded*|monitorremoved*)
            restart_waybar
            ;;
    esac
}

socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do
    handle "$line"
done
