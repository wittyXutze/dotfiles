#!/bin/bash
# Workspace 1: kitty links + Brave rechts
# Effektive Auflösung: 3072x1728, waybar 32px, gaps 10px

hyprctl dispatch workspace 1

if ! hyprctl clients -j | grep -q '"class": "kitty"'; then
    kitty &
    sleep 1
fi

if ! hyprctl clients -j | grep -q '"class": "brave-browser"'; then
    brave &
    sleep 2
fi

hyprctl dispatch focuswindow class:kitty
hyprctl dispatch setfloating
hyprctl dispatch resizewindowpixel exact 1517 1672,class:kitty
hyprctl dispatch movewindowpixel exact 12 44,class:kitty

hyprctl dispatch focuswindow class:brave-browser
hyprctl dispatch setfloating
hyprctl dispatch resizewindowpixel exact 1517 1672,class:brave-browser
hyprctl dispatch movewindowpixel exact 1543 44,class:brave-browser
