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


`timescale 1ns / 1ps

module TESTcore_design (
    input wire clk,        // Clock signal
    input wire reset,      // Reset signal
    input wire btn_left,   // Left button input
    input wire btn_right,  // Right button input
    input wire btn_up,     // Up button input (for dropping pieces)
    output reg showLogo,
    output reg [9:0] boardYOffset,
    output reg showRedsTurn,
    output reg showYellowsTurn,
    output reg showRedWins, 
    output reg showYellowWins, 
    output reg showTieGame, 
    output reg showRedIndicator,
    output reg[9:0] redIndicatorXOffset,
    output reg showYellowIndicator,
    output reg[9:0] yellowIndicatorXOffset,
    output wire [209:0] FLAT__redPieceYOffset,
    output wire [209:0] FLAT__redPieceXOffset,
    output wire [209:0] FLAT__yellowPieceYOffset,
    output wire [209:0] FLAT__yellowPieceXOffset,
    output reg showCornerBorderCheck,
    output reg game_over
);


reg [9:0] redPieceYOffset [20:0];
reg [9:0] redPieceXOffset [20:0];
reg [9:0] yellowPieceYOffset [20:0];
reg [9:0] yellowPieceXOffset [20:0];

reg [1:0] board [41:0]; // Board cells (42) 
reg [4:0] currRed;
reg [4:0] currYellow;
//reg game_over;  // Game over signal
reg [5:0] state;  // State
reg[2:0] row;
reg[5:0] column;
reg loop_done;
reg update;
reg current_player;


assign FLAT__redPieceYOffset = {redPieceYOffset[20],redPieceYOffset[19],redPieceYOffset[18],redPieceYOffset[17],redPieceYOffset[16],redPieceYOffset[15],redPieceYOffset[14],redPieceYOffset[13],redPieceYOffset[12],redPieceYOffset[11],redPieceYOffset[10],redPieceYOffset[9],redPieceYOffset[8],redPieceYOffset[7],redPieceYOffset[6],redPieceYOffset[5],redPieceYOffset[4],redPieceYOffset[3],redPieceYOffset[2],redPieceYOffset[1],redPieceYOffset[0]};    
assign FLAT__redPieceXOffset = {redPieceXOffset[20],redPieceXOffset[19],redPieceXOffset[18],redPieceXOffset[17],redPieceXOffset[16],redPieceXOffset[15],redPieceXOffset[14],redPieceXOffset[13],redPieceXOffset[12],redPieceXOffset[11],redPieceXOffset[10],redPieceXOffset[9],redPieceXOffset[8],redPieceXOffset[7],redPieceXOffset[6],redPieceXOffset[5],redPieceXOffset[4],redPieceXOffset[3],redPieceXOffset[2],redPieceXOffset[1],redPieceXOffset[0]};   
assign FLAT__yellowPieceYOffset = {yellowPieceYOffset[20],yellowPieceYOffset[19],yellowPieceYOffset[18],yellowPieceYOffset[17],yellowPieceYOffset[16],yellowPieceYOffset[15],yellowPieceYOffset[14],yellowPieceYOffset[13],yellowPieceYOffset[12],yellowPieceYOffset[11],yellowPieceYOffset[10],yellowPieceYOffset[9],yellowPieceYOffset[8],yellowPieceYOffset[7],yellowPieceYOffset[6],yellowPieceYOffset[5],yellowPieceYOffset[4],yellowPieceYOffset[3],yellowPieceYOffset[2],yellowPieceYOffset[1],yellowPieceYOffset[0]};
assign FLAT__yellowPieceXOffset = {yellowPieceXOffset[20],yellowPieceXOffset[19],yellowPieceXOffset[18],yellowPieceXOffset[17],yellowPieceXOffset[16],yellowPieceXOffset[15],yellowPieceXOffset[14],yellowPieceXOffset[13],yellowPieceXOffset[12],yellowPieceXOffset[11],yellowPieceXOffset[10],yellowPieceXOffset[9],yellowPieceXOffset[8],yellowPieceXOffset[7],yellowPieceXOffset[6],yellowPieceXOffset[5],yellowPieceXOffset[4],yellowPieceXOffset[3],yellowPieceXOffset[2],yellowPieceXOffset[1],yellowPieceXOffset[0]};



localparam
INI	= 6'b000001,
RED_TURN	= 6'b000010,
YELLOW_TURN = 6'b000100,
TIE	= 6'b001000,
RED_WIN	= 6'b010000,
YELLOW_WIN = 6'b100000,
animateLeft = 6'b100001,
animateRight = 6'b100010,
animateBoard = 6'b100100,
animatePiece = 6'b101000;

integer i;
integer j;
always @(posedge clk, posedge reset) 
  begin 
    //initialization
    if (reset)
 
    begin : initialization
        for (j =0; j < 21; j= j+1)
        begin
            redPieceYOffset[j] = 0; 
            redPieceXOffset[j] = 20; 
            yellowPieceYOffset[j] = 0;
            yellowPieceXOffset[j] = 20; 
        end
        showCornerBorderCheck <= 1;
        redIndicatorXOffset = 22;
        yellowIndicatorXOffset = 22;
        currRed = 0;
        currYellow = 0;
        state <= INI;
        game_over = 0;
        row = 5;
        column = 0;
        current_player = 0; //start w RED
        boardYOffset = 29;
        loop_done = 0;
        for (i = 0; i < 42; i = i + 1) begin
            board[i] <= 0; // Reset board to empty
        end
        showLogo <= 1;
        showRedIndicator <= 0;
        showYellowIndicator <= 0;
        showRedWins <= 0; 
        showYellowWins <=0;
        showTieGame <=0 ;
        showRedsTurn <=0;
        showYellowsTurn <=0;
    end
    else 
    begin 
        case (state)
        INI	: 
        begin
            for (j =0; j < 21; j= j+1)
            begin
                redPieceYOffset[j] = 0; 
                redPieceXOffset[j] = 20; 
                yellowPieceYOffset[j] = 0;
                yellowPieceXOffset[j] = 20; 
            end
            currRed = 0;
            currYellow = 0;
            redIndicatorXOffset = 22;
            yellowIndicatorXOffset = 22;    
            showCornerBorderCheck <= 1;
            showLogo <= 1;
            showRedIndicator <= 0;
            showYellowIndicator <= 0;
            showRedWins <= 0; 
            showYellowWins <=0;
            showTieGame <=0 ;
            boardYOffset = 29;
            showRedsTurn <=0;
            showYellowsTurn <=0;
            if (btn_up)
            begin
                showRedIndicator <= 0;
                state <= animateBoard;
                //state <= RED_TURN; // Start the game with red 
            end
        end
        RED_TURN: 
        begin
            // $display("red turn");
            showRedIndicator <= 1;
            showRedsTurn <= 1;
            showYellowsTurn <=0;
            yellowIndicatorXOffset = 22;
            showYellowIndicator <= 0;
            if (btn_left) //move left
            begin
                column <= (column == 0) ? 0 : column - 1;
                state <= animateLeft;
            end
            else if (btn_right) // move right
            begin
                column = (column == 6) ? 6 : column + 1;
                state <= animateRight;
            end
            else if (btn_up) //select column & place piece
            begin : loop 
                integer r;
                loop_done = 0;
                // $display("red piece drop");
                for (r = 5; r >= 0 && !loop_done; r =r - 1) 
                begin
                    if (board[r * 7 + column] == 0)
                    begin
                        // $display("red r:%d, c:%d", row, column);
                        board[r * 7 + column] = current_player+1;
                        row = r;
                        // $display("red piece board r:%d, c:%d, player:%d, val:%d", row, column, current_player, board[r * 7 + column]);
                        loop_done = 1;
                    end
                end
                if (loop_done == 0)
                    state <= RED_TURN;
                // $display("red piece row: %d", row);
                else 
                begin
                    loop_done = 0;
                    redPieceYOffset[currRed] <= 37; 
                    redPieceXOffset[currRed] = 20+18*column;
                    state <= animatePiece;
                end
                
            end
            else if (update)
            begin 
                //check for win/ tie
                if (check_win(row, column, current_player+1))
                begin 
                    game_over =1;
                    state <= RED_WIN;
                    showYellowIndicator <=0;
                    showRedIndicator <=0;
                end 
                else if (is_board_full(0))
                begin 
                    state <= TIE;
                    showYellowIndicator <= 0;
                    showRedIndicator <= 0;
                end 
                else 
                begin 
                    column = 0;
                    state <= YELLOW_TURN;
                    current_player <= 1;
                    showYellowIndicator <=1;
                    showRedIndicator <=0;
                end
                update <=0;
            end
        end
        YELLOW_TURN: 
        begin
            // $display ("yellow turn");
            showRedIndicator <= 0;
            showRedsTurn <=0;
            showYellowsTurn <= 1;
            redIndicatorXOffset = 22;
            showYellowIndicator <= 1;
            if (btn_left) //move left
            begin
                column <= (column == 0) ? 0 : column - 1;
                state <= animateLeft;
            end
            else if (btn_right) // move right
            begin

                column = (column == 6) ? 6 : column + 1;
                // $display ("moving yellow right to col %d", column);
                state <= animateRight;
            end
            else if (btn_up) //select column & place piece
            begin : loop3
                integer r;
                for (r = 5; r >= 0 && !loop_done; r = r - 1) 
                begin
                    // $display("yellow r:%d, c:%d", row, column);
                    if (board[r * 7 + column] == 0) begin
                        board[r * 7 + column] = current_player+1;
                        row = r;
                        // $display("yellow piece board r:%d, c:%d, player:%d, val:%d", row, column, current_player, board[r * 7 + column]);
                        loop_done = 1;
                    end
                end
                if (loop_done == 0)
                    state <= YELLOW_TURN;
                // $display("red piece row: %d", row);
                else 
                begin
                    yellowPieceYOffset[currYellow] <= 37;
                    yellowPieceXOffset[currYellow] = 20+18*column;
                    state <= animatePiece;
                    loop_done = 0;
                end
            end
            else if (update)
            begin
               // row <= 5;
                //check for win/ tie
                if (check_win(row, column, current_player+1))
                begin 
                    showYellowIndicator <=0;
                    showRedIndicator <=0;
                    game_over =1;
                    state <= YELLOW_WIN;
                end 
                else if (is_board_full(0))
                begin 
                    showYellowIndicator <=0;
                    showRedIndicator <=0;
                    state <= TIE;
                end 
                else 
                begin
                    column = 0;
                    state <= RED_TURN;
                    showYellowIndicator <=0;
                    showRedIndicator <=1;
                    current_player <= 0;
                end
                update <=0;
            end
        end
        RED_WIN:
        begin
            showRedsTurn <= 0;
            showYellowsTurn <=0;
            showRedIndicator <= 0;
            showYellowIndicator <= 0;
            showRedWins <= 1;
            game_over <= 1;
            if (reset) 
            begin
                state <= INI;
                game_over <= 0;
            end
        end
        YELLOW_WIN:
        begin
            showRedsTurn <= 0;
            showYellowsTurn <=0;
            showYellowWins <=1;
            showRedIndicator <= 0;
            showYellowIndicator <= 0;
            game_over <= 1;
            if (reset) 
            begin
                state <= INI;
                game_over <= 0;
            end
        end
        TIE:
        begin
            showRedsTurn <= 0;
            showYellowsTurn <=0;
            showTieGame <=1;
            showRedIndicator <= 0;
            showYellowIndicator <= 0;
            game_over <= 1;
            if (reset) 
            begin
                state <= INI;
                game_over <= 0;
            end
        end
        animateLeft:
        begin
            // $display ("animate left");
            if (current_player == 0)
            begin
                if (redIndicatorXOffset > column * 18 + 22)
                    redIndicatorXOffset= redIndicatorXOffset-1;
                else 
                    state <= RED_TURN;
            end
            else 
            begin
                if (yellowIndicatorXOffset > column * 18 + 22)
                    yellowIndicatorXOffset=yellowIndicatorXOffset-1;
                else
                    state <= YELLOW_TURN;
            end
        end
        animateRight:
        begin
            // $display ("animate right");
            if (current_player == 0)
            begin
                if (redIndicatorXOffset < column * 18 + 22)
                    redIndicatorXOffset = redIndicatorXOffset+1;
                else 
                    state <= RED_TURN;  
            end
            else
            begin
                if (yellowIndicatorXOffset < column * 18 + 22)
                    yellowIndicatorXOffset = yellowIndicatorXOffset+1;
                else
                    state <= YELLOW_TURN;
            end
        end
        animateBoard:
        begin 
            showLogo <= 0;
            // $display ("animate board");
            if (boardYOffset > 0)
                boardYOffset=boardYOffset-1;
            else 
                state <= RED_TURN;
        end
        animatePiece:
            begin
                // $display ("animate piece");
                if (current_player == 0)
                begin 
                    redPieceXOffset[currRed] = 20+18*column;
                    if (redPieceYOffset[currRed] < 37 + row * 15)
                        redPieceYOffset[currRed]=redPieceYOffset[currRed] +1;
                    else 
                    begin
                        
                        update =1;
                        state <= RED_TURN;
                        // column = 0;
                        //reset all offsets
                        // redPieceXOffset[currRed] = 22;
                        // redPieceYOffset[currRed] = 37;
                        currRed  = currRed +1;
                        redIndicatorXOffset = 22;
                        yellowIndicatorXOffset = 22;
                    end
                end
                else 
                begin 
                    yellowPieceXOffset[currYellow] = 20+18*column;
                    if (yellowPieceYOffset[currYellow] < 37 + row * 15)
                        yellowPieceYOffset[currYellow]=yellowPieceYOffset[currYellow]+1;
                    else 
                    begin
                        currYellow = currYellow + 1;
                        update =1;
                        state <= YELLOW_TURN;
                        // column = 0;
                        //reset all offsets
                        redIndicatorXOffset = 22;
                        yellowIndicatorXOffset = 22;
                    end
                end
            end
        endcase
    end
  end

  function is_board_full(input i);
  begin : full
  integer i;
        is_board_full = 1;
        loop_done = 0;
        for (i = 0; i < 42 && !loop_done; i = i + 1) 
        begin
            if (board[i] == 0) begin
                is_board_full = 0;
                loop_done =1;
            end
        end
        loop_done = 0;
  end
  endfunction

function check_win(input integer row, input integer col, input reg [2:0] player);
    check_win = check_direction(row, col, player, 0, 1) || 
                check_direction(row, col, player, 1, 0) || 
                check_direction(row, col, player, 1, 1) || 
                check_direction(row, col, player, 1, -1);
endfunction

function check_direction(input integer row, input integer col, input reg [2:0] player, input integer d_row, input integer d_col);
begin : check
    integer count;
    integer r,c;
    integer i;
    count = 0;
    r = row;
    c = col;
    check_direction = 0;
    loop_done = 0;
    
    for (i = 0; i < 4 && !loop_done; i = i+1) begin
        if (r < 0 || r >= 6 || c < 0 || c >= 7 || board[r * 7 + c] != player) begin
            loop_done = 1;
        end else begin
            count = count +1;
            r = r + d_row;
            c = c + d_col;
        end
    end
    r = row - d_row;
    c = col - d_col;
    loop_done = 0;
    for (i = 0; i < 4 && !loop_done; i = i+1) begin
        if (r < 0 || r >= 6 || c < 0 || c >= 7 || board[r * 7 + c] != player) begin
           loop_done = 1;
        end else begin
            count = count + 1;
            r = r - d_row;
            c = c - d_col;
        end
    end
    loop_done = 0;
    if (count >= 4)
        check_direction = 1;
end
endfunction


endmodule




// module TESTcore_design(
//     input wire clk,
//     output reg showLogo,
//     output reg [9:0] boardYOffset,
//     output reg showRedsTurn,
//     output reg showYellowsTurn,
//     output reg showRedWins,
//     output reg showYellowWins,
//     output reg showTieGame,
//     output reg showRedIndicator,
//     output reg [9:0] redIndicatorXOffset,
//     output reg showYellowIndicator,
//     output reg [9:0] yellowIndicatorXOffset,
//     output wire [209:0] FLAT__redPieceYOffset,
//     output wire [209:0] FLAT__redPieceXOffset,
//     output wire [209:0] FLAT__yellowPieceYOffset,
//     output wire [209:0] FLAT__yellowPieceXOffset,
//     output reg showCornerBorderCheck
// );
//     reg [9:0] redPieceYOffset [20:0];
//     reg [9:0] redPieceXOffset [20:0];
//     reg [9:0] yellowPieceYOffset [20:0];
//     reg [9:0] yellowPieceXOffset [20:0];

//     assign FLAT__redPieceYOffset = {redPieceYOffset[20],redPieceYOffset[19],redPieceYOffset[18],redPieceYOffset[17],redPieceYOffset[16],redPieceYOffset[15],redPieceYOffset[14],redPieceYOffset[13],redPieceYOffset[12],redPieceYOffset[11],redPieceYOffset[10],redPieceYOffset[9],redPieceYOffset[8],redPieceYOffset[7],redPieceYOffset[6],redPieceYOffset[5],redPieceYOffset[4],redPieceYOffset[3],redPieceYOffset[2],redPieceYOffset[1],redPieceYOffset[0]};    
//     assign FLAT__redPieceXOffset = {redPieceXOffset[20],redPieceXOffset[19],redPieceXOffset[18],redPieceXOffset[17],redPieceXOffset[16],redPieceXOffset[15],redPieceXOffset[14],redPieceXOffset[13],redPieceXOffset[12],redPieceXOffset[11],redPieceXOffset[10],redPieceXOffset[9],redPieceXOffset[8],redPieceXOffset[7],redPieceXOffset[6],redPieceXOffset[5],redPieceXOffset[4],redPieceXOffset[3],redPieceXOffset[2],redPieceXOffset[1],redPieceXOffset[0]};   
//     assign FLAT__yellowPieceYOffset = {yellowPieceYOffset[20],yellowPieceYOffset[19],yellowPieceYOffset[18],yellowPieceYOffset[17],yellowPieceYOffset[16],yellowPieceYOffset[15],yellowPieceYOffset[14],yellowPieceYOffset[13],yellowPieceYOffset[12],yellowPieceYOffset[11],yellowPieceYOffset[10],yellowPieceYOffset[9],yellowPieceYOffset[8],yellowPieceYOffset[7],yellowPieceYOffset[6],yellowPieceYOffset[5],yellowPieceYOffset[4],yellowPieceYOffset[3],yellowPieceYOffset[2],yellowPieceYOffset[1],yellowPieceYOffset[0]};
//     assign FLAT__yellowPieceXOffset = {yellowPieceXOffset[20],yellowPieceXOffset[19],yellowPieceXOffset[18],yellowPieceXOffset[17],yellowPieceXOffset[16],yellowPieceXOffset[15],yellowPieceXOffset[14],yellowPieceXOffset[13],yellowPieceXOffset[12],yellowPieceXOffset[11],yellowPieceXOffset[10],yellowPieceXOffset[9],yellowPieceXOffset[8],yellowPieceXOffset[7],yellowPieceXOffset[6],yellowPieceXOffset[5],yellowPieceXOffset[4],yellowPieceXOffset[3],yellowPieceXOffset[2],yellowPieceXOffset[1],yellowPieceXOffset[0]};


//     integer i;

//     always @(posedge clk) begin
//         showCornerBorderCheck <= 1;
//         for(i = 0; i < 21; i = i+1) begin
//             redPieceXOffset[i] <= 20 + (i%7)*18;
//             redPieceYOffset[i] <= 37 + (i%6)*15;
//         end
//         for(i = 0; i < 21; i = i+1) begin
//             yellowPieceXOffset[i] <= 20 + (i%7)*18;
//             yellowPieceYOffset[i] <= i;
//         end
//         showLogo <= 1;
//         boardYOffset <= 0;
//     end
// endmodule
