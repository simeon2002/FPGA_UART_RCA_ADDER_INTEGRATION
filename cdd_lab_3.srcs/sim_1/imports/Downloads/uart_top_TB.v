`timescale 1ns / 1ps

module uart_top_TB ();
 
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wTx, wTxSerial, wTxDone;
  reg rTxStart;
  reg [7:0] rTxByte;
  
  // We downscale the values in the simulation
  // this will give CLKS_PER_BIT = 100 / 10 = 10
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10;
  
    uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wTxSerial),
     .oTxDone(wTxDone)
     );
  // Instantiate DUT  
  uart_top 
  #( .NBYTES(2), .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) )
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wTxSerial), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk <= !rClk;
 
  // Input stimulus
  initial
    begin
      rRst = 1;
      rTxStart = 0; 
      rTxByte = 8'h56;
      #(5*CLOCK_PERIOD);
      
      rRst =0;
      #(5*CLOCK_PERIOD);
      rTxStart = 1; // start transmission
      #(CLOCK_PERIOD);
      rTxStart = 0;
      rTxByte = 8'h30;
      
      // Let it run for a while
      #(100*CLOCK_PERIOD);
      // second byte
      rTxStart = 1;
      //rTxByte = 8'h30;
      #(CLOCK_PERIOD);
      rTxStart = 0;
      #(CLOCK_PERIOD);
      #(500*CLOCK_PERIOD);
                       
    end
   
endmodule