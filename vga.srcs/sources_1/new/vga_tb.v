`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2024 03:52:05 PM
// Design Name: 
// Module Name: vga_tb
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


module vga_tb(hSync, vSync, vgaRed, vgaGrn, vgaBlu);

    output hSync;
    output vSync;
    output [3:0] vgaRed;
    output [3:0] vgaGrn;
    output [3:0] vgaBlu;
    
    reg clk;
    initial begin
        clk = 0;
    end
    always begin
        #5;
        clk = ~clk;
    end

    vga display(.sysClk(clk), .hSync(hSync), .vSync(vSync), .vgaRed(vgaRed), .vgaGrn(vgaGrn), .vgaBlu(vgaBlu));

endmodule
