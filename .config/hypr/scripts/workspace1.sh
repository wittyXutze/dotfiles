#!/bin/bash
WS=1
hyprctl clients -j | python3 -c "
import json,sys
for x in json.load(sys.stdin):
    if x['workspace']['id']==$WS: print(x['address'])
" | while read addr; do
    hyprctl dispatch closewindow address:$addr
done
sleep 0.5
hyprctl dispatch workspace $WS
hyprctl dispatch exec "[workspace $WS silent; float; size 1517 1672; move 12 44] kitty"
sleep 0.5
hyprctl dispatch exec "[workspace $WS silent; float; size 1517 1672; move 1543 44] brave-browser"
