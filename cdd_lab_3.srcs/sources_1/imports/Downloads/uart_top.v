`timescale 1ns / 1ps

module uart_top #(
    parameter   NBYTES        = 12,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )
  ( // what we create here is basically a top level, controller transmission as well as receiving on fpga
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );

  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rBuffer;

  // State definition
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_TX           = 3'b010;
  localparam s_WAIT_TX      = 3'b011;
  localparam s_DONE         = 3'b100;

  // Declare all variables needed for the finite state machine
  // -> the FSM state
  reg [2:0]   rFSM;

  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  wire [7:0] wRxByte;

  wire        wTxBusy;
  wire        wTxDone, wRxDone;
  reg [$clog2(NBYTES):0] rCnt; // count the number of bytes sent and received



  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
  uart_receiver #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),
     .oRxByte(wRxByte),
     .oRxDone(wRxDone));
     
  always @(posedge iClk)
  begin

  // reset all registers upon reset
  // this uses the register block immediately to determine the next state immediately.
  if (iRst == 1 )
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rBuffer <= 0;
    end
  else
    begin
      case (rFSM)

        s_IDLE :
          begin
            rFSM <= s_WAIT_RX;
          end

        s_WAIT_RX :
          begin
            if (wRxDone == 1 && rCnt < NBYTES - 1) begin // RECEIVING BYTES
                    rBuffer <= {rBuffer[NBYTES *8 - 9: 0], wRxByte}; //shifting byte
                    rCnt <= rCnt + 1;
                    rFSM <= s_WAIT_RX;
            end
                
            else if (rCnt == NBYTES - 1 && wRxDone == 1) begin // GOING TO TRANSMISSION STATE
                rBuffer <= {rBuffer[NBYTES *8 - 9: 0], wRxByte};
                rCnt <= 0; // reset counter to count transmission byte
                rFSM <= s_TX;
            end
            else begin // BITS STILL TRANSMITTING, DO NOTHING
                rFSM <= s_WAIT_RX;
            end
          end

        s_TX :
          begin
            if ( (rCnt < NBYTES) && (wTxBusy == 0) )
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1;
                rTxByte <= rBuffer[NBYTES*8-1:NBYTES*8-8];            // highest byte first!
                rBuffer <= {rBuffer[NBYTES*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end
            else
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end

            s_WAIT_TX : // waiting for ONE cycle (as stated in tx module in ORDER to transmit the next byte afterwards.)
              begin
                if (wTxDone) begin
                  rFSM <= s_TX;
                end else begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 0;
                end
              end

            s_DONE :
              begin
                rFSM <= s_IDLE;
              end

            default :
              rFSM <= s_IDLE;

          endcase
      end
    end

endmodule
