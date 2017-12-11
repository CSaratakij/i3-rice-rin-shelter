#!/bin/sh
#----------------------------------------#
# Auto Start App on specific workspace.  #
#----------------------------------------#

# Setup Workspace 2
i3-msg "workspace 2; exec st -ai -e newsboat"
sleep 0.8;
i3-msg "workspace 2; floating disable"
i3-msg "workspace 2; split h"

# Setup Workspace 4
i3-msg "workspace 4; exec st -ai -e alsamixer -g"
sleep 0.8;
i3-msg "workspace 4; floating disable"
i3-msg "workspace 4; split h"
i3-msg "workspace 4; exec st -ai -e mpsyt"
sleep 0.8;
i3-msg "workspace 4; floating disable"
i3-msg "workspace 4; split h"
for i in {1..6}
do
    i3-msg "resize grow left 6 px"
done
sleep 0.8;

# Setup Workspace 8
i3-msg "workspace 8; exec st -ai -e alsamixer -g"
sleep 0.8;
i3-msg "workspace 8; floating disable"
i3-msg "workspace 8; split h"
i3-msg "workspace 8; exec st -ai -e cmus"
sleep 0.8;
i3-msg "workspace 8; floating disable"
i3-msg "workspace 8; split v"
i3-msg "workspace 8; exec st -ai -e cava"
sleep 0.8;
i3-msg "workspace 8; floating disable"
for i in {1..6}
do
    i3-msg "resize grow left 6 px"
    i3-msg "resize shrink up 6 px"
done
i3-msg "resize grow left 6 px"
sleep 0.8;

# Setup Workspace 9
i3-msg "workspace 9; exec st"
sleep 0.8;

# Setup Workspace 10
i3-msg "workspace 10; exec run_autoupdate.sh"
sleep 0.8;
i3-msg "workspace 10; floating disable"

# Late Workspace 2 Setup
i3-msg "workspace 2; exec st -ai -e rtv --monochrome"
sleep 3;
i3-msg "workspace 2; floating disable"
i3-msg "resize grow left 6 px"
i3-msg "resize grow left 6 px"

# Back to Workspace 1
i3-msg "workspace 1"

#----------------------------------------#
# Launch general app ....                #
#----------------------------------------#

# Launch Bar
exec polybar mystatus -q &

# Launch Conky
exec conky -d &

# Launch nm-applet
exec nm-applet &

# Lock screen update picture cache
exec ~/@3rdPartyPackages/betterlockscreen/lock.sh -u ~/Pictures/wallpaper/wallpaper.png &

