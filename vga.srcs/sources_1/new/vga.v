`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2024 06:10:43 PM
// Design Name: 
// Module Name: vga
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


module vga(sysClk, hSync, vSync, vgaRed, vgaGrn, vgaBlu);
    input wire sysClk;
    output reg hSync;
    output reg vSync;
    output reg[3:0] vgaRed;
    output reg[3:0] vgaGrn;
    output reg[3:0] vgaBlu;
    
    
    // create 25 MHz pixel clock for 480x600 video output
    reg pixClk;
    reg pixClkCnt;
    initial begin
        pixClk = 0;
        pixClkCnt = 0;
    end
    
    always @(posedge sysClk) begin
        pixClkCnt <= pixClkCnt + 1;
        if(pixClkCnt == 0) begin
            pixClk <= ~pixClk;
        end
    end
    
    reg lineClk;
    reg [9:0] hCnt;
    reg [3:0] hState;
    reg [9:0] pixX;
    assign hValid = hState[1];
    localparam hSyncPulse   = 4'b1000;
    localparam hBackPorch   = 4'b0100;
    localparam hDisplayTime = 4'b0010;
    localparam hFrontPorch  = 4'b0001;
    localparam hSyncPulsePix = 96;
    localparam hBackPorchPix = 48;
    localparam hDisplayTimePix = 640;
    localparam hFrontPorchPix = 16;
    
    
    initial begin
        lineClk <= 0;
        hState <= hSyncPulse;
        hCnt <= 0;
        hSync <= 0;
        pixX <= 0;
    end
     
    always @(posedge pixClk) begin
        hCnt <= hCnt + 1;
    
        case(hState)
            hDisplayTime: begin
                hSync <= 1;
                if(hCnt == hDisplayTimePix-1) begin
                    hCnt <= 0;
                    hState <= hFrontPorch;
                end
                else begin
                    pixX <= pixX + 1;
                end
            end
            
            hFrontPorch: begin
                hSync <= 1;
                if(hCnt == hFrontPorchPix-1) begin
                    hCnt <= 0;
                    hState <= hSyncPulse;
                end
            end
            
            hSyncPulse: begin
                hSync <= 0;
                if(hCnt == hSyncPulsePix-1) begin
                    hCnt <= 0;
                    hState <= hBackPorch;
                end
            end
            
            hBackPorch: begin
                hSync <= 1;
                pixX <= 0;
                lineClk <= 0;
                if(hCnt == hBackPorchPix-1) begin
                    hCnt <= 0;
                    hState <= hDisplayTime;
                    lineClk <= 1;                 // we disable then enable lineClk so vertical sync will trigger properly on posedge
                end
            end
        endcase
    end
    
    reg [9:0] vCnt;
    reg [3:0] vState;
    reg [9:0] pixY;
    reg frameClk;
    assign vValid = vState[1];
    localparam vSyncPulse   = 4'b1000;
    localparam vBackPorch   = 4'b0100;
    localparam vDisplayTime = 4'b0010;
    localparam vFrontPorch  = 4'b0001;
    localparam vSyncPulsePix = 2;
    localparam vBackPorchPix = 29;
    localparam vDisplayTimePix = 480;
    localparam vFrontPorchPix = 10;
    
    
    initial begin
        frameClk <= 0;
        vState <= vSyncPulse;
        vCnt <= 0;
        vSync <= 0;
        pixY <= 0;
    end
     
    always @(posedge lineClk) begin
        vCnt <= vCnt + 1;
    
        case(vState)
            vDisplayTime: begin
                vSync <= 1;
                if(vCnt == vDisplayTimePix-1) begin
                    vCnt <= 0;
                    vState <= vFrontPorch;
                    frameClk <= 0;
                end
                else begin
                    pixY <= pixY + 1;
                end
            end
            
            vFrontPorch: begin
                vSync <= 1;
                frameClk <= 1;
                if(vCnt == vFrontPorchPix-1) begin
                    vCnt <= 0;
                    vState <= vSyncPulse;
                end
            end
            
            vSyncPulse: begin
                vSync <= 0;
                if(vCnt == vSyncPulsePix-1) begin
                    vCnt <= 0;
                    vState <= vBackPorch;
                end
            end
            
            vBackPorch: begin
                vSync <= 1;
                pixY <= 0;
                if(vCnt == vBackPorchPix-1) begin
                    vCnt <= 0;
                    vState <= vDisplayTime;
                end
            end
        endcase
    end

    wire showLogo;
    wire [9:0] boardYOffset;
    wire showRedsTurn;
    wire showYellowsTurn;
    wire showRedWins;
    wire showYellowWins;
    wire showTieGame;
    wire showRedIndicator;
    wire [9:0] redIndicatorXOffset;
    wire showYellowIndicator;
    wire [9:0] yellowIndicatorXOffset;
    wire [9:0] redPieceYOffset [20:0];
    wire [9:0] redPieceXOffset [20:0];
    wire [9:0] yellowPieceYOffset [20:0];
    wire [9:0] yellowPieceXOffset [20:0];
    wire showCornerBorderCheck;
    
    
    // packing so we can actually pass 2d arrays to and from modules :/
    // generated by gen_array_flattener.py
    wire [209:0] FLAT__redPieceYOffset;
    assign {redPieceYOffset[20],redPieceYOffset[19],redPieceYOffset[18],redPieceYOffset[17],redPieceYOffset[16],redPieceYOffset[15],redPieceYOffset[14],redPieceYOffset[13],redPieceYOffset[12],redPieceYOffset[11],redPieceYOffset[10],redPieceYOffset[9],redPieceYOffset[8],redPieceYOffset[7],redPieceYOffset[6],redPieceYOffset[5],redPieceYOffset[4],redPieceYOffset[3],redPieceYOffset[2],redPieceYOffset[1],redPieceYOffset[0]} = FLAT__redPieceYOffset;   
   
    wire [209:0] FLAT__redPieceXOffset;
    assign {redPieceXOffset[20],redPieceXOffset[19],redPieceXOffset[18],redPieceXOffset[17],redPieceXOffset[16],redPieceXOffset[15],redPieceXOffset[14],redPieceXOffset[13],redPieceXOffset[12],redPieceXOffset[11],redPieceXOffset[10],redPieceXOffset[9],redPieceXOffset[8],redPieceXOffset[7],redPieceXOffset[6],redPieceXOffset[5],redPieceXOffset[4],redPieceXOffset[3],redPieceXOffset[2],redPieceXOffset[1],redPieceXOffset[0]} = FLAT__redPieceXOffset;   
   
    wire [209:0] FLAT__yellowPieceYOffset;
    assign {yellowPieceYOffset[20],yellowPieceYOffset[19],yellowPieceYOffset[18],yellowPieceYOffset[17],yellowPieceYOffset[16],yellowPieceYOffset[15],yellowPieceYOffset[14],yellowPieceYOffset[13],yellowPieceYOffset[12],yellowPieceYOffset[11],yellowPieceYOffset[10],yellowPieceYOffset[9],yellowPieceYOffset[8],yellowPieceYOffset[7],yellowPieceYOffset[6],yellowPieceYOffset[5],yellowPieceYOffset[4],yellowPieceYOffset[3],yellowPieceYOffset[2],yellowPieceYOffset[1],yellowPieceYOffset[0]} = FLAT__yellowPieceYOffset;
   
    wire [209:0] FLAT__yellowPieceXOffset;   
    assign {yellowPieceXOffset[20],yellowPieceXOffset[19],yellowPieceXOffset[18],yellowPieceXOffset[17],yellowPieceXOffset[16],yellowPieceXOffset[15],yellowPieceXOffset[14],yellowPieceXOffset[13],yellowPieceXOffset[12],yellowPieceXOffset[11],yellowPieceXOffset[10],yellowPieceXOffset[9],yellowPieceXOffset[8],yellowPieceXOffset[7],yellowPieceXOffset[6],yellowPieceXOffset[5],yellowPieceXOffset[4],yellowPieceXOffset[3],yellowPieceXOffset[2],yellowPieceXOffset[1],yellowPieceXOffset[0]} = FLAT__yellowPieceXOffset;
     
     
     
    TESTcore_design core_design(
        .clk(frameClk),
        .showLogo(showLogo),
        .boardYOffset(boardYOffset),
        .showRedsTurn(showRedsTurn),
        .showYellowsTurn(showYellowsTurn),
        .showRedWins(showRedWins),
        .showYellowWins(showYellowWins),
        .showTieGame(showTieGame),
        .showRedIndicator(showRedIndicator),
        .redIndicatorXOffset(redIndicatorXOffset),
        .showYellowIndicator(showYellowIndicator),
        .yellowIndicatorXOffset(yellowIndicatorXOffset),
        .FLAT__redPieceYOffset(FLAT__redPieceYOffset),
        .FLAT__redPieceXOffset(FLAT__redPieceXOffset),
        .FLAT__yellowPieceYOffset(FLAT__yellowPieceYOffset),
        .FLAT__yellowPieceXOffset(FLAT__yellowPieceXOffset),
        .showCornerBorderCheck(showCornerBorderCheck)
    );


    wire [3:0] cornerBorderCheckPI;
    wire cornerBorderCheckValid;
    corner_border_check corner_border_check_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(cornerBorderCheckPI), .valid(cornerBorderCheckValid));

    wire [3:0] bgTilePI;
    wire bgTileValid;
    bg_tile bg_tile_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(bgTilePI), .valid(bgTileValid));

    wire [3:0] logoPI;
    wire logoValid;
    logo logo_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(logoPI), .valid(logoValid));
    
    wire [3:0] boardPI;
    wire boardValid;
    board board_gfx(.clk(pixClk), .x(pixX >> 2), .y((pixY >> 2) - boardYOffset), .paletteIndex(boardPI), .valid(boardValid));
    
    wire [3:0] redsTurnPI;
    wire redsTurnValid;
    reds_turn reds_turn_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(redsTurnPI), .valid(redsTurnValid));
    
    wire [3:0] yellowsTurnPI;
    wire yellowsTurnValid;
    yellows_turn yellows_turn_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(yellowsTurnPI), .valid(yellowsTurnValid));
    
    wire [3:0] redWinsPI;
    wire redWinsValid;
    red_wins red_wins_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(redWinsPI), .valid(redWinsValid));
    
    wire [3:0] yellowWinsPI;
    wire yellowWinsValid;
    yellow_wins yellow_wins_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(yellowWinsPI), .valid(yellowWinsValid));
    
    wire [3:0] tieGamePI;
    wire tieGameValid;
    tie_game tie_game_gfx(.clk(pixClk), .x(pixX >> 2), .y(pixY >> 2), .paletteIndex(tieGamePI), .valid(tieGameValid));
    
    wire [3:0] redIndicatorPI;
    wire redIndicatorValid;
    red_indicator red_indicator_gfx(.clk(pixClk), .x((pixX >> 2) - redIndicatorXOffset), .y(pixY >> 2), .paletteIndex(redIndicatorPI), .valid(redIndicatorValid));
    
    wire [3:0] yellowIndicatorPI;
    wire yellowIndicatorValid;
    yellow_indicator yellow_indicator_gfx(.clk(pixClk), .x((pixX >> 2) - yellowIndicatorXOffset), .y(pixY >> 2), .paletteIndex(yellowIndicatorPI), .valid(yellowIndicatorValid));
    
    genvar redPieceI;
    wire [3:0] redPiecePI [20:0];
    wire redPieceValid [20:0]; 
    generate
    for(redPieceI = 0; redPieceI < 21; redPieceI = redPieceI+1) begin
        red_piece red_piece_gfx(.clk(pixClk), .x((pixX >> 2) - redPieceXOffset[redPieceI]), .y((pixY >> 2) - redPieceYOffset[redPieceI]), .paletteIndex(redPiecePI[redPieceI]), .valid(redPieceValid[redPieceI]));
    end 
    endgenerate
    
    
    genvar yellowPieceI;
    wire [3:0] yellowPiecePI [20:0];
    wire yellowPieceValid [20:0]; 
    generate
    for(yellowPieceI = 0; yellowPieceI < 21; yellowPieceI = yellowPieceI+1) begin
        yellow_piece yellow_piece_gfx(.clk(pixClk), .x((pixX >> 2) - yellowPieceXOffset[yellowPieceI]), .y((pixY >> 2) - yellowPieceYOffset[yellowPieceI]), .paletteIndex(yellowPiecePI[yellowPieceI]), .valid(yellowPieceValid[yellowPieceI]));
    end 
    endgenerate
    
    

    reg [3:0] frontIndex;
    reg [3:0] pieceIndex;
    reg [3:0] finalIndex;
    integer pieceI;
    always @(posedge pixClk) begin
        if(!(hValid && vValid)) begin
            vgaRed <= 0;
            vgaGrn <= 0;
            vgaBlu <= 0;
        end
        else begin: pixel_block
        
            // front layer priority
            if(cornerBorderCheckValid && showCornerBorderCheck) begin
                frontIndex = cornerBorderCheckPI;
            end
            else if(logoValid && showLogo) begin
                frontIndex = logoPI;
            end
            else if(boardValid) begin
                frontIndex = boardPI;
            end
            else if(redsTurnValid && showRedsTurn) begin
                frontIndex = redsTurnPI;
            end
            else if(yellowsTurnValid && showYellowsTurn) begin
                frontIndex = yellowsTurnPI;
            end
            else if(redWinsValid && showRedWins) begin
                frontIndex = redWinsPI;
            end
            else if(yellowWinsValid && showYellowWins) begin
                frontIndex = yellowWinsPI;
            end
            else if(tieGameValid && showTieGame) begin
                frontIndex = tieGamePI;
            end
            else if(redIndicatorValid && showRedIndicator) begin
                frontIndex = redIndicatorPI;
            end
            else if(yellowIndicatorValid && showYellowIndicator) begin
                frontIndex = yellowIndicatorPI;
            end
            else begin
                frontIndex = 4'b1111;
            end
            
            pieceIndex = 4'b1111;
            for(pieceI = 0; pieceI < 21; pieceI = pieceI+1) begin
                if(redPieceValid[pieceI]) begin
                    pieceIndex = redPiecePI[pieceI];
                end
            end 
            for(pieceI = 0; pieceI < 21; pieceI = pieceI+1) begin
                if(yellowPieceValid[pieceI]) begin
                    pieceIndex = yellowPiecePI[pieceI];
                end
            end 
            
            if(frontIndex != 4'b1111) begin
                finalIndex = frontIndex;
            end
            else if(pieceIndex != 4'b1111) begin
                finalIndex = pieceIndex;
            end
            else begin
                finalIndex = bgTilePI; // tile background is our fallback if everyone else is not valid for this pixel
            end
            
            
            
            case(finalIndex)
                4'h0: begin
                    vgaRed <= 4'h2;
                    vgaGrn <= 4'h2;
                    vgaBlu <= 4'h1;
                end
                
                4'h1: begin
                    vgaRed <= 4'hf;
                    vgaGrn <= 4'hb;
                    vgaBlu <= 4'h3;
                end
                
                4'h2: begin
                    vgaRed <= 4'hf;
                    vgaGrn <= 4'he;
                    vgaBlu <= 4'ha;
                end
                
                4'h3: begin
                    vgaRed <= 4'hb;
                    vgaGrn <= 4'h6;
                    vgaBlu <= 4'h2;
                end  
                
                4'h4: begin
                    vgaRed <= 4'h2;
                    vgaGrn <= 4'h4;
                    vgaBlu <= 4'h4;
                end  
                
                4'h5: begin
                    vgaRed <= 4'hf;
                    vgaGrn <= 4'hb;
                    vgaBlu <= 4'h7;
                end
                
                4'h6: begin
                    vgaRed <= 4'ha;
                    vgaGrn <= 4'h6;
                    vgaBlu <= 4'h4;
                end
                
                4'h7: begin
                    vgaRed <= 4'h3;
                    vgaGrn <= 4'h2;
                    vgaBlu <= 4'h1;
                end
                
                4'h8: begin
                    vgaRed <= 4'h4;
                    vgaGrn <= 4'h3;
                    vgaBlu <= 4'h2;
                end
                
                4'h9: begin
                    vgaRed <= 4'h7;
                    vgaGrn <= 4'h5;
                    vgaBlu <= 4'h4;
                end
                
                4'ha: begin
                    vgaRed <= 4'h2;
                    vgaGrn <= 4'h6;
                    vgaBlu <= 4'h7;
                end
                
                4'hb: begin
                    vgaRed <= 4'hf;
                    vgaGrn <= 4'h4;
                    vgaBlu <= 4'h1;
                end
                
                4'hc: begin
                    vgaRed <= 4'h4;
                    vgaGrn <= 4'ha;
                    vgaBlu <= 4'ha;
                end
                
                4'hd: begin
                    vgaRed <= 4'ha;
                    vgaGrn <= 4'h2;
                    vgaBlu <= 4'h1;
                end
                
                4'he: begin
                    vgaRed <= 4'h5;
                    vgaGrn <= 4'h1;
                    vgaBlu <= 4'h1;
                end
                
                4'hf: begin
                    vgaRed <= 4'h0;
                    vgaGrn <= 4'h0;
                    vgaBlu <= 4'h0;
                end
            endcase
        end
    end
    
    
endmodule
