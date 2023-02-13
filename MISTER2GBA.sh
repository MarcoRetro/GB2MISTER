#!/bin/bash
#MISTER TO GBA SAVE COPY SCRIPT
mister_saves="/media/fat/saves/GBA/"
gb_saves="/media/usb0/"

source=$mister_saves
destination=$gb_saves

cd /media/fat/saves/GBA/
cp -v -u $(ls -1t | head -n 1) /media/usb0/