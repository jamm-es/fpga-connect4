`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
// generated with james's gen_sprite.py with arguments:
//     module_name: bg_tile
//
//     image_file: sprites/bg_tile.png
//     palette_file: palette.txt
//     canvas_width: 160
//     canvas_height: 120
//     x_offset: 0
//     y_offset: 0
//     x_tile: 20
//     y_tile: 15
//
//     inferred x bit length: 10
//     inferred y bit length: 10
//     inferred palette bit length: 4
//////////////////////////////////////////////////////////////////////////

module bg_tile(clk, x, y, paletteIndex, valid);
    input wire clk;
    input wire[9:0] x;
    input wire[9:0] y;
    output reg[3:0] paletteIndex;
    output reg valid;

    reg [9:0] xOffset;
    reg [9:0] yOffset;
    reg [2:0] xSprite;
    reg [2:0] ySprite;
    reg inBounds;

    always @(posedge clk) begin
        xOffset = (x+0);
        yOffset = (y+0);
        xSprite = xOffset % 8;
        ySprite = yOffset % 8;
        inBounds = (xOffset >= 0 && xOffset < 160) && (yOffset >= 0 && yOffset < 120);

        case(ySprite)
            
            3'd0: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd7;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd1: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd7;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd2: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd7;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd3: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd7;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd4: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd8;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd5: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd8;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd6: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd8;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            3'd7: begin
               case(xSprite)
                    
                    3'd0: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd1: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd2: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd3: begin
                        paletteIndex = 4'd7;
                    end
                    
                    3'd4: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd5: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd6: begin
                        paletteIndex = 4'd8;
                    end
                    
                    3'd7: begin
                        paletteIndex = 4'd8;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            

            default: begin
                paletteIndex = 4'bXXXX;
            end
        endcase

        valid = inBounds && (paletteIndex != 4'd15);
    end


endmodule
