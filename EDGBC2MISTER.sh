#!/bin/bash
#EDGBC TO MISTER SAVE COPY AND CONVERSION SCRIPT. THIS WILL OVERWRITE MISTER GAMEBOY AND GBC SAVES WITH THE SAME NAME
mister_saves="/media/fat/saves/"
misterGBC_saves="/media/fat/saves/GBC/"
GBED_saves="/media/usb0/EDGB/SAVE/"

source=$GBED_saves
destination=$mister_saves
destination2=$misterGBC_saves

cd $destination
mkdir -p "$destination/GBC/"

cd $source
for file in *.srm; do
    cp -v "${file}" "${destination2}"/"${file/%.srm/.sav}"
done