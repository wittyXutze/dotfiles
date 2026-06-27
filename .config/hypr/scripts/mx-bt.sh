#!/bin/bash
MAC="D9:D7:80:60:F1:FB"
case "$1" in
    ein) bluetoothctl connect $MAC ;;
    aus) bluetoothctl disconnect $MAC ;;
    *) echo "Usage: mx-bt.sh ein|aus" ;;
esac
