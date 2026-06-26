#!/bin/bash
# Workspace 2: Chromium zentriert, volle Höhe
# Effektive Auflösung: 3072x1728, waybar 32px, gaps 10px

hyprctl dispatch workspace 2

if ! hyprctl clients -j | grep -q '"class": "chromium"'; then
    chromium &
    sleep 2
fi

hyprctl dispatch focuswindow class:chromium
hyprctl dispatch setfloating
hyprctl dispatch resizewindowpixel exact 1536 1676,class:chromium
hyprctl dispatch movewindowpixel exact 768 42,class:chromium
