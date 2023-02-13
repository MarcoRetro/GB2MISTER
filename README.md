# GB2MISTER
A novice set of scripts to transfer saves for color to and from a mister via a USB cart reader/writer.
Credit to Youtube channel Generational Gamer for their tutorial to create a symbolic link within Mister. 
Credit to DentNZ for helping with basic linux commands. 
Creidt to emkultra64 for their work on the mister2fxpack which helped spawn the idea. 

IMPORTANT!
- USE AT YOUR OWN RISK! I take no responsibility for any damage to your device/s
- Only tested with a BennVenn JoeyJr

The GBC2MISTER and GBA2MISTER scripts will copy the save game from the cart to the save directory for that core. 
The MISTER2GBC and MISTER2GBA scripts will copy the save file back to the cart. 
Allow up to 10 seconds for save files to write. Exiting the script or disconnecting the USB reader too early may result in no-copy.


INSTRUCTIONS

CREATE SYMBOLIC LINK FOR CART-READER AND EVERDRIVE GB MICRO SD CARD

Open terminal in Mister and login.
plug in the USB cart reader (eg. JoeyJr) into the Mister.
Type 'lsblk' and press enter.
Under column MOUNTPOINT, you should see your device as '/media/usb0'. If it is not usb0, then take note of the usb number as you will need to alter the scripts and following linux commands to reflect this destination.
Type the following and press enter.

cd /media/fat/games/GBC

type in the following and press enter (if your usb is not named usb0 then change it to your corresponding usb eg. usb1, usb2 etc.)

ln -s /media/usb0

then do the same to create a link to the GBA games folder

cd /media/fa/games/GBA

ln -s /media/usb0



BEFORE LOADING SCRIPTS

Make sure AUTOSAVE in each core is turned on. Each core must have a save directory to copy the .SAV files to. If you have already saved a game at least once in each GB, GBC and GBA cores then there will already be save folders. If not then these can be manually created. In media/fat/saves/ create folders named GAMEBOY, GBC and GBA


USING THE SCRIPTS WITH JOEYJR AND ORIGINAL CARTRIDGE

Example for GBC game:
Copy .sh files to the scripts folder of the Mister.
Plug in GB cart into the reader (JoeyJr or equivalent) then connect it the the Mister by USB.
Copy the save file from the cart to the mister by selecting script GBC2MISTER
If usb destination is not usb0 then the script needs to be altered.


LOADING A GAME

Open GBC core, navigate to the /games folder and find the usb0 folder (or equivalent) and load the game from the cart reader. This will take longer than loading from the Mister's SD card.


TRANSFERRING SAVE FROM MISTER TO GB CART

After saving in-game (not state-save), ensure auto-save is on and bring up the Mister OSD to write the save to the SD card.
Reboot to main Mister menu. Run script MISTER2GBC to write the save file back to the cart. 



USING THE SCRIPT FOR EVERDRIVE GB

On gameboy hardware open the EDGB folder then SAVE folder. 
Navigate the latest game save copy SRAM to file. 
Insert EDGB micro SD into a USB adapter and plug into Mister
Load scrit EDGBC2MISTER to convert and copy EDGB saves to mister
To save back to EDGB sd card, load script MISTER2EDGBC
Insert EDGB with sd card into gameboy hardware, go the the SAVE folder and copy the save file to SRAM. 
