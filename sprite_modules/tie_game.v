`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
// generated with james's gen_sprite.py with arguments:
//     module_name: tie_game
//
//     image_file: sprites/tie_game.png
//     palette_file: palette.txt
//     canvas_width: 160
//     canvas_height: 120
//     x_offset: 53
//     y_offset: 6
//     x_tile: 1
//     y_tile: 1
//
//     inferred x bit length: 10
//     inferred y bit length: 10
//     inferred palette bit length: 4
//////////////////////////////////////////////////////////////////////////

module tie_game(clk, x, y, paletteIndex, valid);
    input wire clk;
    input wire[9:0] x;
    input wire[9:0] y;
    output reg[3:0] paletteIndex;
    output reg valid;

    reg [9:0] xOffset;
    reg [9:0] yOffset;
    reg [5:0] xSprite;
    reg [3:0] ySprite;
    reg inBounds;

    always @(posedge clk) begin
        xOffset = (x-53);
        yOffset = (y-6);
        xSprite = xOffset[5:0];
        ySprite = yOffset[3:0];
        inBounds = (xOffset >= 0 && xOffset < 54) && (yOffset >= 0 && yOffset < 9);

        case(ySprite)
            
            4'd0: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd1: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd2: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd3: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd4: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd5: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd15;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd6: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd7: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd2;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd8: begin
               case(xSprite)
                    
                    6'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd8: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd9: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd20: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd21: begin
                        paletteIndex = 4'd15;
                    end
                    
                    6'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd37: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd40: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd41: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd43: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd44: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd45: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd47: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd48: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    6'd53: begin
                        paletteIndex = 4'd9;
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
