#!/bin/bash

LIVEUSER="live"
chmor -R 777 ~/.config/nyarch
if [ "$USER" = "$LIVEUSER" ]; then
   sleep 2
   sudo -E calamares
else
    nyarchtour
    rm -rf ~/.config/autostart/start.desktop
fi

