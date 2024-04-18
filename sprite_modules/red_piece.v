`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
// generated with james's gen_sprite.py with arguments:
//     module_name: red_piece
//
//     image_file: sprites/red_piece.png
//     palette_file: palette.txt
//     canvas_width: 160
//     canvas_height: 120
//     x_offset: 0
//     y_offset: -12
//     x_tile: 1
//     y_tile: 1
//
//     inferred x bit length: 10
//     inferred y bit length: 10
//     inferred palette bit length: 4
//////////////////////////////////////////////////////////////////////////

module red_piece(clk, x, y, paletteIndex, valid);
    input wire clk;
    input wire[9:0] x;
    input wire[9:0] y;
    output reg[3:0] paletteIndex;
    output reg valid;

    reg [9:0] xOffset;
    reg [9:0] yOffset;
    reg [3:0] xSprite;
    reg [3:0] ySprite;
    reg inBounds;

    always @(posedge clk) begin
        xOffset = (x+0);
        yOffset = (y+12);
        xSprite = xOffset[3:0];
        ySprite = yOffset[3:0];
        inBounds = (xOffset >= 0 && xOffset < 12) && (yOffset >= 0 && yOffset < 12);

        case(ySprite)
            
            4'd0: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd1: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd2: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd3: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd4: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd13;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd5: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd14;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd6: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd13;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd7: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd14;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd8: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd9: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd10: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd11: begin
               case(xSprite)
                    
                    4'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd2: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd3: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd4: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd5: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd6: begin
                        paletteIndex = 4'd14;
                    end
                    
                    4'd7: begin
                        paletteIndex = 4'd13;
                    end
                    
                    4'd8: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd9: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd10: begin
                        paletteIndex = 4'd15;
                    end
                    
                    4'd11: begin
                        paletteIndex = 4'd15;
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
