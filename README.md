# James and Syna's Connect 4 (for the Nexys A7 FPGA)

Open and run this project in Vivado to flash it onto the FPGA. Graphics are outputted as a 640x480 VGA signal.

### Demo video




https://github.com/jamm-es/fpga-connect4/assets/68095432/974696a1-dcd0-4bcc-a1b8-7fae1bfbc717





### Supplemental files

`gen_sprite.py` is responsible for generating sprite modules (in `/sprite_modules`) based on input images 
(stored in `/sprites`). Requires the `pillow` library.

`palette.txt` specifies the colors used in the sprites, and is an input for `gen_sprite.py`

`Makefile` uses `gen_sprite.py` to ensure that all the sprite modules are up to date with any sprite image revisions. 
Run `make sprites` to run `gen_sprite.py` for 
all required sprites in the project, or `make clean` to remove all the sprite modules so they may be regenerated.

`gen_array_flattener.py` is a small utility that creates copy/pastable Verilog code to pack and flatten 2D arrays, 
which are not natively able to be passed to and
from a module.

`mockup.aseprite` is an Aseprite file that contains all of the original artwork made for the game. 
The colors used are a subset of the [Fantasy 24](https://lospec.com/palette-list/fantasy-24)
color palette.
