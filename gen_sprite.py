import argparse
from PIL import ImageColor, Image
import math


# extract arguments
parser = argparse.ArgumentParser(
    prog='Verilog sprite generator', 
    description='Creates a verilog module that returns a paletted color index for a given x and y position based on an input image'
)
parser.add_argument('module_name', type=str)
parser.add_argument('image_file', type=str)
parser.add_argument('palette_file', type=argparse.FileType(mode='r', encoding='UTF-8'))

offset_group = parser.add_argument_group('canvas')
offset_group.add_argument('--canvas-width', type=int, default=160)
offset_group.add_argument('--canvas-height', type=int, default=120)

offset_group = parser.add_argument_group('offset')
offset_group.add_argument('--x-offset', type=int, default=0)
offset_group.add_argument('--y-offset', type=int, default=0)

tiling_group = parser.add_argument_group('tiling')
tiling_group.add_argument('--x-tile', type=int, default=1)
tiling_group.add_argument('--y-tile', type=int, default=1)

args = parser.parse_args()

print(f"""Received arguments:
\tmodule_name: {args.module_name}
\timage_file: {args.image_file}
\tpalette_file: {args.palette_file.name}
\tcanvas_width: {args.canvas_width}
\tcanvas_height: {args.canvas_height}
\tx_offset: {args.x_offset}
\ty_offset: {args.y_offset}
\tx_tile: {args.x_tile}
\ty_tile: {args.y_tile}
""")


# parse palette file
print('Read palette:')
palette = []
for swatch in args.palette_file:
    rgb = ImageColor.getrgb(swatch)
    rgb = (rgb[0], rgb[1], rgb[2], 255)
    palette.append(rgb)
    print(f'\t{rgb}')
print('Adding implicit invalid/transparent to palette: (0, 0, 0, 0)')
palette.append((0, 0, 0, 0))
palette_map = {k: v for v, k in enumerate(palette)}

# parse image file
index_array = []
with Image.open(args.image_file) as img:
    img_width = img.width
    img_height = img.height
    img = img.convert('RGBA')
    curr_row = []
    curr_x = 0
    curr_y = 0
    for color in list(img.getdata()):
        if color[3] == 0:
            curr_row.append(palette_map[(0, 0, 0, 0)])
        else:
            curr_row.append(palette_map[color])
        curr_x += 1
        if curr_x == img.width:
            index_array.append(curr_row)
            curr_row = []
            curr_x = 0
            curr_y += 1

print('Index array:')
print(index_array)

x_bit_length = 10
y_bit_length = 10
sprite_x_bit_length = (img_width-1).bit_length()
sprite_y_bit_length = (img_height-1).bit_length()
palette_bit_length = (len(palette)-1).bit_length()

output = f"""`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
// generated with james's gen_sprite.py with arguments:
//     module_name: {args.module_name}
//
//     image_file: {args.image_file}
//     palette_file: {args.palette_file.name}
//     canvas_width: {args.canvas_width}
//     canvas_height: {args.canvas_height}
//     x_offset: {args.x_offset}
//     y_offset: {args.y_offset}
//     x_tile: {args.x_tile}
//     y_tile: {args.y_tile}
//
//     inferred x bit length: {x_bit_length}
//     inferred y bit length: {y_bit_length}
//     inferred palette bit length: {palette_bit_length}
//////////////////////////////////////////////////////////////////////////

module {args.module_name}(clk, x, y, paletteIndex, valid);
    input wire clk;
    input wire[{x_bit_length-1}:0] x;
    input wire[{y_bit_length-1}:0] y;
    output reg[{palette_bit_length-1}:0] paletteIndex;
    output reg valid;

    reg [{x_bit_length-1}:0] xOffset;
    reg [{y_bit_length-1}:0] yOffset;
    reg [{sprite_x_bit_length-1}:0] xSprite;
    reg [{sprite_y_bit_length-1}:0] ySprite;
    reg inBounds;

    always @(posedge clk) begin
        xOffset = (x{f"-{args.x_offset}" if args.x_offset > 0 else f"+{-args.x_offset}"});
        yOffset = (y{f"-{args.y_offset}" if args.y_offset > 0 else f"+{-args.y_offset}"});
        xSprite = {f'xOffset[{sprite_x_bit_length-1}:0]' if args.x_tile == 1 else f"xOffset % {img_width}"};
        ySprite = {f'yOffset[{sprite_y_bit_length-1}:0]' if args.y_tile == 1 else f"yOffset % {img_height}"};
        inBounds = (xOffset >= 0 && xOffset < {img_width*args.x_tile}) && (yOffset >= 0 && yOffset < {img_height*args.y_tile});

        case(ySprite)
            {''.join([f"""
            {sprite_y_bit_length}'d{y_index}: begin
               case(xSprite)
                    {''.join([f"""
                    {sprite_x_bit_length}'d{x_index}: begin
                        paletteIndex = {palette_bit_length}'d{swatch};
                    end
                    """ for x_index, swatch in enumerate(row)])}

                    default: begin
                        paletteIndex = {palette_bit_length}'b{'X' * palette_bit_length};
                    end
                endcase 
            end
            """ for y_index, row in enumerate(index_array)])}

            default: begin
                paletteIndex = {palette_bit_length}'b{'X' * palette_bit_length};
            end
        endcase

        valid = inBounds && (paletteIndex != {palette_bit_length}'d{len(palette)-1});
    end


endmodule
"""
with open(f'{args.module_name}.v', 'w') as f:
    f.write(output)


# close file handlers
args.palette_file.close()



print(f'All done! {args.module_name}.v successfully written')
