#!/bin/bash
# Workspace 7: CuteCom + OpenPLC Editor
# Effektive Auflösung: 3072x1728, waybar 32px, gaps 10px

hyprctl dispatch workspace 7

# CuteCom starten (falls nicht läuft)
if ! hyprctl clients -j | grep -q '"class": "cutecom"'; then
    cutecom &
    sleep 1.5
fi

# OpenPLC Editor (beremiz) starten
if ! hyprctl clients -j | grep -q '"class": "beremiz"'; then
    /opt/OpenPLC_Editor/openplc_editor.sh &
    sleep 2
fi

# Fenster positionieren
hyprctl dispatch focuswindow class:cutecom
hyprctl dispatch setfloating
hyprctl dispatch resizewindowpixel exact 768 838,class:cutecom
hyprctl dispatch movewindowpixel exact 10 42,class:cutecom

hyprctl dispatch focuswindow class:beremiz
hyprctl dispatch setfloating
hyprctl dispatch resizewindowpixel exact 1536 1676,class:beremiz
hyprctl dispatch movewindowpixel exact 1546 42,class:beremiz
