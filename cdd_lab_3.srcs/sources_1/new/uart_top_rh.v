`timescale 1ns / 1ps

module uart_top_rh #(
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH = 16,
    parameter   NBYTES        = OPERAND_WIDTH/8,
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
 
  
  // State definition  
  localparam s_IDLE         = 4'b0000;
  localparam s_RX_A         = 4'b0001;
  localparam s_RX_B         = 4'b0010;
  localparam s_WAIT_RX_A    = 4'b0011;
  localparam s_WAIT_RX_B    = 4'b0100;
  localparam s_ADDER        = 4'b0101;
  localparam s_WAIT_ADDER   = 4'b0110;
  localparam s_TX           = 4'b0111;
  localparam s_WAIT_TX      = 4'b1000;
  localparam s_DONE         = 4'b1001;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [3:0]   rFSM;  
  
  //buffers
  reg  [NBYTES*8-1:0] rA;
  reg  [NBYTES*8-1:0] rB;
  reg  [(NBYTES+1)*8-1:0] rRes;
  
  // Connection to UART RX (inputs = registers, outputs = wires)
  wire [7:0]   wRxData; 
  wire         wRxDone;

 
   uart_rx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iRxSerial(iRx),   // serial input to receiver
     .oRxByte(wRxData), // 0utput byte from receiver is then sent to input byte from transmitter
     .oRxDone(wRxDone)
     );
     
  
  
  //adder 
  reg                   rAdderStart;
  wire  [NBYTES*8-1:0]  wOpA,wOpB;
  wire  [NBYTES*8:0]    wRes;
  wire                  wAdderDone;
  
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH))
  MP_ADDER_INST(
       .iClk(iClk),
       .iRst(iRst),
       .iStart(rAdderStart),
       .iOpA(wOpA),
       .iOpB(wOpB),
       .oRes(wRes),
       .oDone(wAdderDone)
  );
     
 
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte,rRxByte;
  
  
  wire        wTxBusy;
  wire        wTxDone;
  
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte), // input byte from receiver
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
     
  
     
  reg [$clog2(NBYTES):0] rCnt;
  
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rRxByte <= 0;
      rA <= 0;
      rB <= 0;
      rRes<=0;
      rAdderStart <=0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE : //0
          begin
            rFSM <= s_RX_A;
            rTxStart <= 0;
            rCnt <= 0;
            rTxByte <= 0;
            rA <= 0;
            rB <= 0;
            rRes<=0;
            rAdderStart <=0;
          end
          
        s_RX_A :  //1
          begin
            if( rCnt<NBYTES)  //rRxByte shift in butter
                begin
                  
                     rFSM <= s_WAIT_RX_A;
                     rCnt <= rCnt + 1;
                end
             else if(rCnt == NBYTES)
                begin
                  
                    rFSM <= s_RX_B;
                    rCnt <= 0;
                end
          end
          
          s_WAIT_RX_A : //2
          begin
            if(wRxDone)
                begin
                    rA <= {rA[NBYTES*8-9:0],rRxByte}; //shifter buffer
                    rFSM <= s_RX_A;
                end    
            else
                begin
                    rRxByte<= wRxData;
                    rA <= rA;
                    rFSM <= s_WAIT_RX_A;
                end
          end
          
         s_RX_B :  //1
          begin
            if( rCnt<NBYTES)  //rRxByte shift in butter
                begin             
                     rFSM <= s_WAIT_RX_B;
                     rCnt <= rCnt + 1;
                end
             else if(rCnt == NBYTES)
                begin
                    rFSM <= s_ADDER;
                    rCnt <= 0;
                end
          end
          
        
          
           s_WAIT_RX_B : //2
          begin
            if(wRxDone)
                begin
                    rB <= {rB[NBYTES*8-9:0],rRxByte}; //shifter buffer
                    rFSM <= s_RX_B;
                end    
            else
                begin
                    rRxByte<= wRxData;
                    rB <= rB;
                    rFSM <= s_WAIT_RX_B;
                end
          end
          
        s_ADDER:
            begin
                rAdderStart <=1;
                rFSM <= s_WAIT_ADDER;
            end
          
        s_WAIT_ADDER:
            begin
                rAdderStart <=0;
                rRes <= {7'b0000000,wRes};
                if(wAdderDone) 
                    begin
                          rFSM <= s_TX;
                    end
                else
                    begin
                          rFSM <= s_WAIT_ADDER;
                    end
            end
          
             
        s_TX : //3
          begin
            if ( (rCnt < (NBYTES+1)) && (wTxBusy ==0) )  //buffer shift out and txByte read from buffer
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rRes[(NBYTES+1)*8-1:(NBYTES+1)*8-8];            // we send the uppermost byte
                rRes <= {rRes[(NBYTES+1)*8-9:0] , 8'b00000000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rRes <= rRes;
                rCnt <= 0;
              end
            end 
            
        s_WAIT_TX : //4
          begin
            if (wTxDone) 
                begin
                    rFSM <= s_TX;
                    rTxStart <= 0;  
                end 
            else 
                begin
                    rFSM <= s_WAIT_TX;
                    rTxStart <= 0;                   
                end
          end 
          
        s_DONE : //5
          begin
            rFSM <= s_IDLE;
          end 

        default :
          rFSM <= s_IDLE;
             
          endcase
      end
    end       
    
    assign wOpA=rA;
    assign wOpB=rB;
endmodule