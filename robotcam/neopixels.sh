#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="robotcam Neopixel Lights"
TITLE="Neopixel Stick Examples"
MENU="Choose one of the following options:"

OPTIONS=(1 "360 White"
         2 "360 Rainbow"
         3 "Smooth Sweep"
         4 "Staggered Sweep"
         5 "Sleep")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            python ~/Pimoroni/pantilthat/examples/grbw.py
            ;;
        2)
            ~/Pimoroni/pantilthat/examples/neopixels.py
            ;;
        3)
            ~/Pimoroni/pantilthat/examples/smooth.py
            ;;
        4)
            ~/Pimoroni/pantilthat/examples/timeout.py
            ;;
        5)
            ~/Pimoroni/pantilthat/examples/sleep.py
            ;;
esac
