#!/bin/bash
#GBC TO MISTER SAVE COPY SCRIPT
mister_saves="/media/fat/saves/"
gb_saves="/media/usb0/"

source=$gb_saves
destination=$mister_saves

cd $destination
mkdir -p "$destination/GBC/"

cd /media/fat/saves/GBC/
touch DUMMYSAVE.SAV

cd $source
for f in *.SAV
do 
   cp -v "$f" /media/fat/saves/GBC/

done
