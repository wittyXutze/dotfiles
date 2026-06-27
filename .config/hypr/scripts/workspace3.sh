#!/bin/bash
WS=3
hyprctl clients -j | python3 -c "
import json,sys
for x in json.load(sys.stdin):
    if x['workspace']['id']==$WS: print(x['address'])
" | while read addr; do
    hyprctl dispatch closewindow address:$addr
done
sleep 0.2
hyprctl dispatch workspace $WS
hyprctl dispatch exec "[workspace $WS silent; float; size 1142 833; move 1 42] nautilus --new-window /home/withold"
sleep 0.2
hyprctl dispatch focuswindow class:org.gnome.Nautilus
hyprctl dispatch moveactive exact -78 88
hyprctl dispatch resizeactive exact 1142 833

hyprctl dispatch exec "[workspace $WS silent; float; size 1142 833; move 1 885] flatpak run org.mozilla.thunderbird_esr"
# Warten bis Thunderbird wirklich gemappt ist
for i in $(seq 1 20); do
    sleep 0.5
    hyprctl clients -j | python3 -c "
import json,sys
clients = json.load(sys.stdin)
mapped = [x for x in clients if 'thunderbird' in x['class'].lower() and x['mapped']]
exit(0 if mapped else 1)
" && break
done
hyprctl dispatch focuswindow class:org.mozilla.thunderbird_esr
hyprctl dispatch moveactive exact 1 885
hyprctl dispatch resizeactive exact 1142 833

sleep 0.3
hyprctl dispatch exec "[workspace $WS silent; float; size 1910 833; move 1152 42] kitty"
sleep 0.3
hyprctl dispatch exec "[workspace $WS silent; float; size 1910 833; move 1152 885] ghostty"
