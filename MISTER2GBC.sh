#!/bin/bash
#MISTER TO GBC SAVE COPY SCRIPT
mister_saves="/media/fat/saves/GBC/"
gb_saves="/media/usb0/"

source=$mister_saves
destination=$gb_saves

cd /media/fat/saves/GBC/
cp -v -u $(ls -1t | head -n 1) /media/usb0/