`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 09:26:36 PM
// Design Name: 
// Module Name: TESTcore_deisgn
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


module TESTcore_design(
    input wire clk,
    output reg showLogo,
    output reg [9:0] boardYOffset,
    output reg showRedsTurn,
    output reg showYellowsTurn,
    output reg showRedWins,
    output reg showYellowWins,
    output reg showTieGame,
    output reg showRedIndicator,
    output reg [9:0] redIndicatorXOffset,
    output reg showYellowIndicator,
    output reg [9:0] yellowIndicatorXOffset,
    output wire [209:0] FLAT__redPieceYOffset,
    output wire [209:0] FLAT__redPieceXOffset,
    output wire [209:0] FLAT__yellowPieceYOffset,
    output wire [209:0] FLAT__yellowPieceXOffset,
    output reg showCornerBorderCheck
);
    reg [9:0] redPieceYOffset [20:0];
    reg [9:0] redPieceXOffset [20:0];
    reg [9:0] yellowPieceYOffset [20:0];
    reg [9:0] yellowPieceXOffset [20:0];

    assign FLAT__redPieceYOffset = {redPieceYOffset[20],redPieceYOffset[19],redPieceYOffset[18],redPieceYOffset[17],redPieceYOffset[16],redPieceYOffset[15],redPieceYOffset[14],redPieceYOffset[13],redPieceYOffset[12],redPieceYOffset[11],redPieceYOffset[10],redPieceYOffset[9],redPieceYOffset[8],redPieceYOffset[7],redPieceYOffset[6],redPieceYOffset[5],redPieceYOffset[4],redPieceYOffset[3],redPieceYOffset[2],redPieceYOffset[1],redPieceYOffset[0]};    
    assign FLAT__redPieceXOffset = {redPieceXOffset[20],redPieceXOffset[19],redPieceXOffset[18],redPieceXOffset[17],redPieceXOffset[16],redPieceXOffset[15],redPieceXOffset[14],redPieceXOffset[13],redPieceXOffset[12],redPieceXOffset[11],redPieceXOffset[10],redPieceXOffset[9],redPieceXOffset[8],redPieceXOffset[7],redPieceXOffset[6],redPieceXOffset[5],redPieceXOffset[4],redPieceXOffset[3],redPieceXOffset[2],redPieceXOffset[1],redPieceXOffset[0]};   
    assign FLAT__yellowPieceYOffset = {yellowPieceYOffset[20],yellowPieceYOffset[19],yellowPieceYOffset[18],yellowPieceYOffset[17],yellowPieceYOffset[16],yellowPieceYOffset[15],yellowPieceYOffset[14],yellowPieceYOffset[13],yellowPieceYOffset[12],yellowPieceYOffset[11],yellowPieceYOffset[10],yellowPieceYOffset[9],yellowPieceYOffset[8],yellowPieceYOffset[7],yellowPieceYOffset[6],yellowPieceYOffset[5],yellowPieceYOffset[4],yellowPieceYOffset[3],yellowPieceYOffset[2],yellowPieceYOffset[1],yellowPieceYOffset[0]};
    assign FLAT__yellowPieceXOffset = {yellowPieceXOffset[20],yellowPieceXOffset[19],yellowPieceXOffset[18],yellowPieceXOffset[17],yellowPieceXOffset[16],yellowPieceXOffset[15],yellowPieceXOffset[14],yellowPieceXOffset[13],yellowPieceXOffset[12],yellowPieceXOffset[11],yellowPieceXOffset[10],yellowPieceXOffset[9],yellowPieceXOffset[8],yellowPieceXOffset[7],yellowPieceXOffset[6],yellowPieceXOffset[5],yellowPieceXOffset[4],yellowPieceXOffset[3],yellowPieceXOffset[2],yellowPieceXOffset[1],yellowPieceXOffset[0]};


    integer i;

    always @(posedge clk) begin
        showCornerBorderCheck <= 1;
        for(i = 0; i < 21; i = i+1) begin
            redPieceXOffset[i] <= 20 + (i%7)*18;
            redPieceYOffset[i] <= 37 + (i%6)*15;
        end
        for(i = 0; i < 21; i = i+1) begin
            yellowPieceXOffset[i] <= 20 + (i%7)*18;
            yellowPieceYOffset[i] <= i;
        end
        showLogo <= 1;
        boardYOffset <= 0;
    end
endmodule
