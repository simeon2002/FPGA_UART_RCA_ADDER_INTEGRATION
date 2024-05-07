`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/10/2024 11:01:03 PM
// Design Name:
// Module Name: uart_rx
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


module uart_rx #(
  parameter   CLK_FREQ      = 125_000_000,
  parameter   BAUD_RATE     = 115_200,
  // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085
  parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
)
(
  input wire        iClk, iRst,
  input wire        iRxSerial,
  output wire [7:0] oRxByte,
  output wire       oRxDone
);


    // states (5)
    localparam SIDLE = 3'b000;
    localparam RXSTART = 3'b001;
    localparam RXDATA = 3'b010;
    localparam RXSAMPLE = 3'b011;
    localparam RXSTOP = 3'b100;
    localparam SDONE = 3'b101;

    //4: registers + state register
    reg[2:0] rBitCountCurrent, wBitCountNext;
    reg rDataCurrent1, rDataCurrent2;
    reg [2:0] rCurrentState, wNextState;
    reg [$clog2(CLKS_PER_BIT - 1):  0] rCntClockCurrent, wCntClockNext;
    reg [7:0] rBufferCurrent, wBufferNext;

    always @(posedge iClk) begin
            // double reg to for metastability issue.
            rDataCurrent1 <= iRxSerial;
            rDataCurrent2 <= rDataCurrent1;
        if (iRst) begin
            rBitCountCurrent <= 0;
            rCurrentState <= SIDLE;
            rCntClockCurrent <= 0;
            rBufferCurrent <=0 ;
        end
        else begin
            rBitCountCurrent <= wBitCountNext;
            rCurrentState <= wNextState;
            rCntClockCurrent <= wCntClockNext;
            rBufferCurrent <=wBufferNext;
        end
    end

    // next state logic
// next state logic
always @(*) begin
    case (rCurrentState)
        SIDLE: begin
            wBitCountNext = 0;
            wCntClockNext = 0;
            wBufferNext = 0;

            if (rDataCurrent2 == 0) begin
                wNextState = RXSTART;
                
            end
            else begin
                wNextState = SIDLE;
            end
        end

        RXSTART: begin
            wBufferNext = rBufferCurrent;
            wBitCountNext = 0;
            if (rCntClockCurrent == CLKS_PER_BIT - 3) begin
                wNextState = RXDATA;
                wCntClockNext = 0;
            end
            else begin 
                wNextState = RXSTART;
                wCntClockNext = rCntClockCurrent + 1;
            end
        end

        RXDATA: begin
            wBufferNext = rBufferCurrent;

            if (rCntClockCurrent == (CLKS_PER_BIT - 1) /2 ) begin // sample data
                wNextState = RXSAMPLE;
                wCntClockNext = rCntClockCurrent + 1;
                wBitCountNext = rBitCountCurrent;
            end
            else if (
                rCntClockCurrent == CLKS_PER_BIT - 1 && rBitCountCurrent == 7
                ) begin // byte transfer done
                wNextState = RXSTOP;
                wCntClockNext = 0;
                wBitCountNext = rBitCountCurrent; // should it be incremented? not sure!
            end
            else if (
                rCntClockCurrent == CLKS_PER_BIT - 1
            ) begin // cycles per bit reached
                wNextState <= RXDATA;
                wBitCountNext <= rBitCountCurrent + 1;
                wCntClockNext <= 0;
            end
            else begin  // just counting, no case reached.
                wNextState <= RXDATA;
                wBitCountNext <= rBitCountCurrent;
                wCntClockNext <= rCntClockCurrent + 1;
            end
        end

        RXSAMPLE: begin
            wCntClockNext <= rCntClockCurrent + 1;
            wBitCountNext <= rBitCountCurrent;
            wNextState <= RXDATA;
            wBufferNext <= {rDataCurrent2, rBufferCurrent[7:1]}; // LSB is at end (right most side)
        end

        RXSTOP: begin
            wBitCountNext <= rBitCountCurrent;
            wBufferNext <= rBufferCurrent;

            if (rCntClockCurrent == CLKS_PER_BIT - 1) begin
                wNextState <= SDONE;
                wCntClockNext <= rCntClockCurrent;
            end
            else begin
                wNextState <= RXSTOP;
                wCntClockNext <= rCntClockCurrent + 1;
            end
        end

        SDONE: begin
            wBitCountNext <= 0;
            wCntClockNext <= 0;
            wBufferNext <= rBufferCurrent;
            wNextState <= SIDLE;
        end

        default: begin
            wBitCountNext <= 0;
            wCntClockNext <= 0;
            wBufferNext <= rBufferCurrent;
            wNextState <= SIDLE;
        end
    endcase
end


 


    // output logic
    assign oRxByte = rDataCurrent2;
    assign oRxDone = (rCurrentState == SDONE) ? 1 : 0;


endmodule
