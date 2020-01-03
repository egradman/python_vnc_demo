#!/bin/bash

rm /tmp/.X0-lock
if [ -z "$UI_GEOMETRY" ]; then
  echo "UI_GEOMETRY was not set.  exiting"
  exit 1
fi

SCREEN=0
XFB_SCREEN="${UI_GEOMETRY}x24"

if [ ! -z "$XFB_SCREEN_DPI" ]; then
	DPI_OPTIONS="-dpi $XFB_SCREEN_DPI"
fi


sleep 3
echo "starting XVFB on screen $SCREEN"
Xvfb :$SCREEN -ac $DPI_OPTIONS -screen 0 $XFB_SCREEN &
echo "sleeping"
sleep 5

echo "running x11vnc"

x11vnc -forever -display :$SCREEN
