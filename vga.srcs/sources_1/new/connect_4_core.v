`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2024 04:16:50 PM
// Design Name: 
// Module Name: connect_4_core
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


module connect_4_core(frameClk, gameState);
    input frameClk;
    output reg [2:0] gameState;
    
    initial begin
        gameState <= 0;    
    end
    always @(posedge frameClk) begin
        gameState <= gameState + 1;
    end

endmodule
