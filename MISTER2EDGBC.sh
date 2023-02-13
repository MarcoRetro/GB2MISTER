#!/bin/bash
#EDGB GBC TO MISTER SAVE COPY AND CONVERSION SCRIPT. THIS WILL OVERWRITE MISTER GAMEBOY AND GBC SAVES WITH THE SAME NAME
misterGBC_saves="/media/fat/saves/GBC/"
GBED_saves="/media/usb0/EDGB/SAVE/"

source=$GBED_saves
destination=$misterGBC_saves

cd $destination
for file in *.sav; do
    cp -v "${file}" "${source}"/"${file/%.sav/.srm}"
done