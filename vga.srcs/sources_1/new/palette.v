`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 05:09:58 PM
// Design Name: 
// Module Name: palette
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module palette(pixClk, valid, index, r, g, b);
    input wire pixClk;
    input wire valid;
    input wire[3:0] index;
    output reg[3:0] r;
    output reg[3:0] g;
    output reg[3:0] b;
    
    always @(posedge pixClk) begin
        if(!valid) begin
            r = 0;
            g = 0;
            b = 0;
        end
        else begin
            case(index)
                4'h0: begin
                    r = 4'h2;
                    g = 4'h2;
                    b = 4'h1;
                end
                
                4'h1: begin
                    r = 4'hf;
                    g = 4'hb;
                    b = 4'h3;
                end
                
                4'h2: begin
                    r = 4'hf;
                    g = 4'he;
                    b = 4'ha;
                end
                
                4'h3: begin
                    r = 4'hb;
                    g = 4'h6;
                    b = 4'h2;
                end  
                
                4'h4: begin
                    r = 4'h2;
                    g = 4'h4;
                    b = 4'h4;
                end  
                
                4'h5: begin
                    r = 4'hf;
                    g = 4'hb;
                    b = 4'h7;
                end
                
                4'h6: begin
                    r = 4'ha;
                    g = 4'h6;
                    b = 4'h4;
                end
                
                4'h7: begin
                    r = 4'h3;
                    g = 4'h2;
                    b = 4'h1;
                end
                
                4'h8: begin
                    r = 4'h4;
                    g = 4'h3;
                    b = 4'h2;
                end
                
                4'h9: begin
                    r = 4'h7;
                    g = 4'h5;
                    b = 4'h4;
                end
                
                4'ha: begin
                    r = 4'h2;
                    g = 4'h6;
                    b = 4'h7;
                end
                
                4'hb: begin
                    r = 4'hf;
                    g = 4'h4;
                    b = 4'h1;
                end
                
                4'hc: begin
                    r = 4'h4;
                    g = 4'ha;
                    b = 4'ha;
                end
                
                4'hd: begin
                    r = 4'ha;
                    g = 4'h2;
                    b = 4'h1;
                end
                
                4'he: begin
                    r = 4'h5;
                    g = 4'h1;
                    b = 4'h1;
                end
                
                
            endcase
        end
    end
    
endmodule
