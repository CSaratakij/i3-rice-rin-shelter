#!/bin/sh

DIALOG_RESULT=$(echo -e 'exit i3\nhibernate\nreboot\nshutdown' | rofi -dmenu -i -p "[ Computer ] : " -hide-scrollbar -tokenize -lines 4 -eh 1 -width 40 -location 8 -xoffset 170 -yoffset 70 -padding 30 -disable-history -font "RobotoMono 18")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "exit i3" ];
then
    i3-msg 'exit'
elif [ "$DIALOG_RESULT" = "hibernate" ];
then
    exec systemctl hibernate
elif [ "$DIALOG_RESULT" = "reboot" ];
then
    exec reboot
elif [ "$DIALOG_RESULT" = "shutdown" ];
then
    exec shutdown -h now
fi
