`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////
// generated with james's gen_sprite.py with arguments:
//     module_name: yellow_wins
//
//     image_file: sprites/yellow_wins.png
//     palette_file: palette.txt
//     canvas_width: 160
//     canvas_height: 120
//     x_offset: 37
//     y_offset: 6
//     x_tile: 1
//     y_tile: 1
//
//     inferred x bit length: 10
//     inferred y bit length: 10
//     inferred palette bit length: 4
//////////////////////////////////////////////////////////////////////////

module yellow_wins(clk, x, y, paletteIndex, valid);
    input wire clk;
    input wire[9:0] x;
    input wire[9:0] y;
    output reg[3:0] paletteIndex;
    output reg valid;

    reg [9:0] xOffset;
    reg [9:0] yOffset;
    reg [6:0] xSprite;
    reg [3:0] ySprite;
    reg inBounds;

    always @(posedge clk) begin
        xOffset = (x-37);
        yOffset = (y-6);
        xSprite = xOffset[6:0];
        ySprite = yOffset[3:0];
        inBounds = (xOffset >= 0 && xOffset < 85) && (yOffset >= 0 && yOffset < 9);

        case(ySprite)
            
            4'd0: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd1: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd2: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd3: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd4: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd5: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd6: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd7: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd1;
                    end
                    
                    7'd84: begin
                        paletteIndex = 4'd9;
                    end
                    

                    default: begin
                        paletteIndex = 4'bXXXX;
                    end
                endcase 
            end
            
            4'd8: begin
               case(xSprite)
                    
                    7'd0: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd1: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd2: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd3: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd4: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd5: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd6: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd7: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd8: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd9: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd10: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd11: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd12: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd13: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd14: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd15: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd16: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd17: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd18: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd19: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd20: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd21: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd22: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd23: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd24: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd25: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd26: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd27: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd28: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd29: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd30: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd31: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd32: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd33: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd34: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd35: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd36: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd37: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd38: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd39: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd40: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd41: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd42: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd43: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd44: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd45: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd46: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd47: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd48: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd49: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd50: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd51: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd52: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd53: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd54: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd55: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd56: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd57: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd58: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd59: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd60: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd61: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd62: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd63: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd64: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd65: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd66: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd67: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd68: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd69: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd70: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd71: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd72: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd73: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd74: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd75: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd76: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd77: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd78: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd79: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd80: begin
                        paletteIndex = 4'd15;
                    end
                    
                    7'd81: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd82: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd83: begin
                        paletteIndex = 4'd9;
                    end
                    
                    7'd84: begin
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
