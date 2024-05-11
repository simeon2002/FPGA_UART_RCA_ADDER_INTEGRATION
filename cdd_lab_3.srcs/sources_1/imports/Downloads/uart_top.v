`timescale 1ns / 1ps

module uart_top #(
    parameter OPERAND_WIDTH   = 512, 
    parameter ADDER_WIDTH     = 16,
    parameter   NBYTES        = OPERAND_WIDTH / 8,
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
  //reg [NBYTES*8-1:0] rBuffer;

  // State definition
  localparam s_IDLE         = 3'b000;
  localparam s_OP_A_RX      = 3'b001;
  localparam s_OP_B_RX      = 3'b010;
  localparam s_ADD_OPS      = 3'b011;
  localparam s_TX           = 3'b100;
  localparam s_WAIT_TX      = 3'b101;
  localparam s_DONE         = 3'b110;

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
  // registers for storing ops and result.
  reg [NBYTES*8 - 1: 0] rA, rB;
  reg [NBYTES*8 : 0] rResult;
  wire [NBYTES*8: 0] wResult; // output of adder that will be stored in rResult when addition is done.
  reg rStartAdder;
  wire wAdderDone;

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
         
       
  mp_adder #(.ADDER_WIDTH(ADDER_WIDTH), .OPERAND_WIDTH(OPERAND_WIDTH))
  MP_ADDER_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iStart(rStartAdder),
     .iOpA(rA),
     .iOpB(rB),
     .oRes(wResult),
     .oDone(wAdderDone)
    );
     
     
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
      rResult <= 0;
      rA <= 0;
      rB <= 0;
      rStartAdder <= 0;
    end
  else
    begin
      case (rFSM)

        s_IDLE :
          begin
            rFSM <= s_OP_A_RX;
          end

        s_OP_A_RX :
          begin
            if (wRxDone == 1 && rCnt < NBYTES - 1) begin // RECEIVING BYTES
                rA <= {rA[NBYTES *8 - 9: 0], wRxByte}; //shifting byte (big endian used for receiving and transmission)
                rCnt <= rCnt + 1;
                rFSM <= s_OP_A_RX ;
            end
                
            else if (rCnt == NBYTES - 1 && wRxDone == 1) begin // GOING TO TRANSMISSION STATE
                rA <= {rA[NBYTES *8 - 9: 0], wRxByte};
                rCnt <= 0; // reset counter to count transmission byte
                rFSM <= s_OP_B_RX ;
            end
            else begin // BITS of byte STILL TRANSMITTING OR NOTHING IS TRANSMITTING, DO NOTHING
                rFSM <= s_OP_A_RX ;
            end
          end

      s_OP_B_RX :
        begin
            if (wRxDone == 1 && rCnt < NBYTES - 1) begin // RECEIVING BYTES
                 rB <= {rB[NBYTES * 8 - 9:0], wRxByte}; // shifting byte
                rCnt <= rCnt + 1;
                rFSM <= s_OP_B_RX;
            end
                    
            else if (rCnt == NBYTES - 1 && wRxDone == 1) begin // GOING TO TRANSMISSION STATE
                rB <= {rB[NBYTES * 8 - 9:0], wRxByte};
                rCnt <= 0; // reset counter to count transmission byte
                rFSM <= s_ADD_OPS;
            end
            else begin // BITS of byte STILL TRANSMITTING OR NOTHING IS TRANSMITTING, DO NOTHING
                rFSM <= s_OP_B_RX;
            end
        end
          
        s_ADD_OPS:
          begin
            if (wAdderDone) begin // adder done
                rFSM <= s_TX;
                rResult <= wResult;
                rStartAdder <= 0;
                rCnt <= 0;
            end     
            else begin
                if (wAdderDone == 0 && rCnt == 0) begin 
                    rStartAdder <= 1;
                    rCnt <= rCnt + 1;
                end
                else begin
                    rFSM <= s_ADD_OPS;
                    rStartAdder <= 0;
                end
            end
          end
        
        s_TX : // transmitting result (nbytes + 1) bytes
          begin
           if ( (rCnt < NBYTES + 1) && (wTxBusy == 0) )
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1;
                rTxByte <= rResult[(NBYTES)*8:(NBYTES)*8-7];            // highest byte first!
                rResult <= {rResult[(NBYTES)*8:7] , 8'b0000_0000};    // we shift from right to left
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
                //rBuffer <= 0; //TODO: CHECK IF THIS MAKES THE UART MODULE WORK WITHOUT NEED OF RESET.
              end

            default :
              rFSM <= s_IDLE;

          endcase
      end
    end

endmodule
