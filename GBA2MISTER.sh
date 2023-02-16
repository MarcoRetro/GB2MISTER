#!/bin/bash
#GBA TO MISTER SAVE COPY
mister_saves="/media/fat/saves/"
gb_saves="/media/usb0/"

source=$gb_saves
destination=$mister_saves

cd $destination
mkdir -p "$destination/GBA/"

cd /media/fat/saves/GBA/
touch DUMMYSAVE.SAV

cd $source
for f in *.SAV
do 
   cp -v "$f" /media/fat/saves/GBA/

done
