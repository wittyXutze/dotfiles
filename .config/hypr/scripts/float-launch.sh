#!/bin/bash
# Float-Launcher: Programm zentriert und gefloatet starten
# Aufruf: SUPER+SHIFT+D

APP=$(wofi --show run --prompt "Float-Start")
[ -z "$APP" ] && exit 0

hyprctl dispatch exec "[float; center; size 1400 900] $APP"
